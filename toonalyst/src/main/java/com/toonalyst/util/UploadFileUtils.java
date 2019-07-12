package com.toonalyst.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;
import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class UploadFileUtils {

	public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception {
		// uuid 발급 : 파일네임이 같으면 36의 랜덤 숫자를 파일이름에 붙이는 것. 
		// 중복된 이름이 들어왔을 때 랜덤으로 구성된 36자리를 만든다."36자리_file이름" 이런식으로 만들면 중복이 거의 없다."36자리_"가 uuid이다.
		UUID uid = UUID.randomUUID();
		// 5be0b7af-cf5e-461b-a02c-dcdd5b6474e8    +   " _ "    +    오렌지.png
		String savedName = uid.toString() + "_" + originalName; // "36자리_파일이름" 이 저장할 이름
		// 업로드할 디렉토리 생성
		String savedPath = calcPath(uploadPath); // 2019년 디렉토리 안에 7월 디렉토리 안에 12 디렉토리 만들어줌
		// D:/upload\2019\07\12, 5be0b7af-cf5e-461b-a02c-dcdd5b6474e8_오렌지.png
		File target = new File(uploadPath + savedPath, savedName);
		// 임시 디렉토리에 업로드된 파일을 지정된 디렉토리로 복사
		FileCopyUtils.copy(fileData, target);
		// 파일의 확장자 검사 - 그림이면 썸네일을 만들어 줘야하기 때문이다.
		// a.jpg / aaa.bbb.ccc.jpg
		// 오렌지.png 이면 끝에서 .을 찾아서 (.png) .포함 인데 +1을 하면 (png)만 찾는다.
		String formatName = originalName.substring(originalName.lastIndexOf(".") + 1); 
		String uploadedFileName = null;
		// 이미지 파일은 썸네일 사용
		if (MediaUtils.getMediaType(formatName) != null) { // 클래스MediaUtils안의 getMediaType메서드 실행, 이미지인 경우에는 여기 조건에 탐
			// 썸네일 생성
			uploadedFileName = makeThumbnail(uploadPath, savedPath, savedName);
		} else {
			uploadedFileName = makeIcon(uploadPath, savedPath, savedName);
		}
		return uploadedFileName;
	}
	// 아이콘 생성
	private static String makeIcon(String uploadPath, String path, String fileName) throws Exception {
		// 아이콘의 이름
		String iconName = uploadPath + path + File.separator + fileName;
		// 아이콘 이름을 리턴
		// File.separatorChar : 디렉토리 구분자
		// 윈도우 \ , 유닉스 (리눅스) /
		return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}
	
	private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception { // 썸네일이 안 만들어진 경우 이 메서드를 봐야한다
		// 이미지를 읽기 위한 버퍼
		
		// sourceImg = 원본파일
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
		// 100픽셀 단위의 썸네일 생성(원본파일을 100픽셀로 resize)
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100); // 100픽셀!! 단위로 썸네일 만들어라!!
		// 썸네일의 이름
		// D:/upload\2019\07\12\s_5be0b7af-cf5e-461b-a02c-dcdd5b6474e8_오렌지.png <-여기까지는 String thumbnailName을 만들어서 넣은거지 아직 저장된것은 아님
		String thumbnailName = uploadPath + path + File.separator + "s_" + fileName; // "s_"+"uuid"
		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".")+ 1);
		// 썸네일 생성
		// 원본파일을 resize(썸네일 이미지), PNG,  D:/upload\2019\07\12\s_5be0b7af-cf5e-461b-a02c-dcdd5b6474e8_오렌지.png -> 넣었다! 저장됨.
		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		// 썸네일의 이름을 리턴함
		// return \2019\07\12\s_5be0b7af-cf5e-461b-a02c-dcdd5b6474e8_오렌지.png
		return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/'); 
	}

	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance(); // 오늘날짜 2019.07.12
		// /2019
		String yearPath = File.separator + cal.get(Calendar.YEAR); // file.separator 가 / 이다. + 오늘날짜의 2019 = (/ + 2019)
		// /2019+/07
		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1); // decimalformat 00 두자리 수로 만들어준다.
		// /2019/07/12
		String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		// D:/upload, /2019, /2019/07, /2019/07/12
		makeDir(uploadPath, yearPath, monthPath, datePath); // 디렉토리를 만들어라 없으면 만들고 있으며 안만든다
		log.info(datePath);
		return datePath; // datePath \2019\07\12 윈도우는 \
	}
	
	private static void makeDir(String uploadPath, String... paths) { 
		// type... => ellipsis : 생략 
		// 배열로 값을 받아서 가변적으로 매개변수를 사용할 수 있게 도와준다
		
		// 디렉토리가 존재하면 skip
		if(new File(paths[paths.length -1]).exists()) {
			return;
		}
		for (String path : paths) {
			File dirPath = new File(uploadPath + path);
			if(!dirPath.exists()) {
				dirPath.mkdir(); // 디렉토리 생성
			}
		}
	}
}
