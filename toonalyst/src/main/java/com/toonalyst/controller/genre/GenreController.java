package com.toonalyst.controller.genre;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/genre/*")
public class GenreController {
	// 페이지 이동
	@RequestMapping(value="/naver", method=RequestMethod.GET)
	public String naver() {
		log.info(">>>>> 장르별 랭킹 출력");
		
		return "/genre/naver_list";
	}
	
	@RequestMapping(value="/lezhin", method=RequestMethod.GET)
	public String lezhin() {
		log.info(">>>>> 장르별 랭킹 출력");
		
		return "/genre/lezhin_list";
	}
	
	@RequestMapping(value="/daum", method=RequestMethod.GET)
	public String daum() {
		log.info(">>>>> 장르별 랭킹 출력");
		
		return "/genre/daum_list";
	}
	
	@RequestMapping(value="/kakao", method=RequestMethod.GET)
	public String kakao() {
		log.info(">>>>> 장르별 랭킹 출력");
		
		return "/genre/kakao_list";
	}
}
