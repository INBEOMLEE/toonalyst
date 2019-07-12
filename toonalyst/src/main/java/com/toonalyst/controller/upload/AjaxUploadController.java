package com.toonalyst.controller.upload;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.toonalyst.service.board.BoardService;
import com.toonalyst.util.MediaUtils;
import com.toonalyst.util.UploadFileUtils;

@Controller
public class AjaxUploadController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(AjaxUploadController.class);
	
	@Inject
	BoardService boardService;

	// 업로드 디렉토리 servlet-context.xml에 설정되어 있음
	@Resource(name = "uploadPath")
	String uploadPath;

	// 파일첨부 페이지로 이동
	@RequestMapping(value = "upload/uploadAjax", method = RequestMethod.GET)
	public String uploadAjax() {
		return "/upload/uploadAjax";
	}

	// 업로드한 파일은 MultipartFile 변수에 저장됨
	@ResponseBody // json 형식으로 리턴
	@RequestMapping(value = "upload/uploadAjax", method = RequestMethod.POST, produces = "text/plain;charset=utf-8") // 첨부파일은 POST방식만 가능하다. GET은 안된다
	public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception { // 추가하고싶은 첨부파일이 들어있고 첨부파일은 multipartFile로 받아야함
		// 업로드한 파일 정보와 Http 상태 코드를 함께 리턴
		// uploadPath=D:/upload
		// file.getOriginalFilename = file이름(라이언13.jpg)
		// file.getBytes() = file사이즈 
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.OK);
		// response는 전송한다. 데이터나 화면단주소를 평소에는 보내지만 
		// 지금은 responseEntity 기존에 보내던 것 + Httpsatus 상태코드 지금 처리하려고 보낸 것이 잘 됐다는 것을 보내준다.
		// 처리가 잘되면 HttpStatus를 200번대를 보낸다. 200은 성공, 다 됐을 때,  400서버를 못찾을 때, 500은 화면단 못찾을 때 이렇게 보낸다.
		// UploadPath 대문자 클래스를 static이기 때문에 직접 참조한다. 클래스명을 직접 접근한다.
		// .은 참조연산자이다. 클래스 내의 uploadFile() 메서드를 참조해서 사용한다.
		// 매개변수로 첨부파일 크기와 이름을 가져간다.
		// uploadPath는 위에 업로드 디렉토리, servlet-context.xml을 보면 D드라이브 경로가 있다.
	}

	// 이미지 표시 기능
	@ResponseBody // view가 아닌 data 리턴
	@RequestMapping("upload/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {
		// 서버의 파일을 다운로드하기 위한 스트림
		InputStream in = null; // java.io
		ResponseEntity<byte[]> entity = null;
		try {
			// 확장자 검사
			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
			MediaType mType = MediaUtils.getMediaType(formatName);
			// 헤더 구성 객체
			HttpHeaders headers = new HttpHeaders();
			// InputStream 생성
			in = new FileInputStream(uploadPath + fileName);
//			if (mType != null) { // 이미지 파일이면
//				headers.setContentType(mType);
//			} else { // 이미지가 아니면
				fileName = fileName.substring(fileName.indexOf("_") + 1);
				// 다운로드용 컨텐트 타입
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				// 큰 따옴표 내부에 " \" "
				// 바이트배열을 스트링으로
				// iso-8859-1 서유럽언어
				// new String(fileName.getBytes("utf-8"),"iso-8859-1")
				headers.add("Content-Disposition", "attachment; filename=\"" + new String(
							fileName.getBytes("utf-8"), "iso-8859-1") + "\"");
				// headers.add("Content-Disposition"
				// ,"attachment; filename='"+fileName+"'");
//			}
			// 바이트배열, 헤더
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			if (in != null)
				in.close(); // 스트림 닫기
		}
		return entity;
	}
	
	@ResponseBody //뷰가 아닌 데이터를 리턴
	@RequestMapping(value="upload/deleteFile", method=RequestMethod.POST)
	public ResponseEntity<String> deleteFile(String fileName){
		logger.info("fileName:"+fileName); 
		//확장자 검사
		String formatName=fileName.substring(fileName.lastIndexOf(".")+1);
		MediaType mType=MediaUtils.getMediaType(formatName);
		if(mType != null) { //이미지 파일이면 원본이미지 삭제
			String front=fileName.substring(0, 12);
			String end=fileName.substring(14);
			//File.separatorChar : 유닉스 / 윈도우즈\	
			new File(uploadPath+(front+end).replace('/',File.separatorChar)).delete();
		}
		//원본 파일 삭제(이미지이면 썸네일 삭제)
		new File(uploadPath+fileName.replace('/',File.separatorChar)).delete();
		//레코드 삭제
		//boardService.deleteFile(fileName); 
		
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
	
	@ResponseBody //뷰가 아닌 데이터를 리턴
	@RequestMapping(value="upload/deleteAllFile", method=RequestMethod.POST)
	public ResponseEntity<String> deleteFile(@RequestParam("files[]") String[] files){
		logger.info("delete all files: " + files); 
		
		if(files == null || files.length == 0) {
			return new ResponseEntity<String>("deleted", HttpStatus.OK);
		}
		
		for(String fileName : files) {
			String formatName=fileName.substring(fileName.lastIndexOf(".")+1);
			MediaType mType=MediaUtils.getMediaType(formatName);
			
			if(mType != null) { //이미지 파일이면 원본이미지 삭제
				String front=fileName.substring(0, 12);
				String end=fileName.substring(14);
				//File.separatorChar : 유닉스 / 윈도우즈\	
				new File(uploadPath+(front+end).replace('/',File.separatorChar)).delete();
			}
			
			//원본 파일 삭제(이미지이면 썸네일 삭제)
			new File(uploadPath+fileName.replace('/',File.separatorChar)).delete();
		}
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
}