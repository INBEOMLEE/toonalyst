package com.toonalyst.controller.upload;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.toonalyst.service.board.BoardService;
import com.toonalyst.util.UploadFileUtils;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AjaxUploadController {
	
	@Inject
	private BoardService service;
	
	 // 업로드 디렉토리 servlet-context.xml에 설정되어 있음
	@Resource(name = "uploadPath")
	String uploadPath;
	
	// 파일첨부 페이지로 이동
	@RequestMapping(value="upload/uploadAjax",  method=RequestMethod.GET)
	public String uploadAjax(){
		return "/upload/uploadAjax";
	}
	
	// 업로드한 파일은 MultipartFile 변수에 저장됨
	@ResponseBody // json형식으로 리턴
	@RequestMapping(value="upload/uploadAjax",  method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception{
		// 업로드한 파일 정보와 Http 상태 코드를 함께 리턴
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.OK);
	}
	
	
}
