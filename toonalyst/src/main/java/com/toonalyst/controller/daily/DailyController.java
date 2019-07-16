package com.toonalyst.controller.daily;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/daily/*")
public class DailyController {
	
	// 페이지 이동
	@RequestMapping(value="/naver", method=RequestMethod.GET)
	public String naver() {
		log.info(">>>>> 네이버 요일별 랭킹 출력");
		
		/* return "/daily/naver_list"; */
		return "construction";
	}
	
	// 페이지 이동
	@RequestMapping(value="/lezhin", method=RequestMethod.GET)
	public String lezhin() {
		log.info(">>>>> 레진 요일별 랭킹 출력");
		
		/* return "/daily/lezhin_list"; */
		return "construction";
	}
	
	@RequestMapping(value="/daum", method=RequestMethod.GET)
	public String daum() {
		log.info(">>>>> 다음 요일별 랭킹 출력");
		
		/* return "/daily/daum_list"; */
		return "construction";
	}
	
	@RequestMapping(value="/kakao", method=RequestMethod.GET)
	public String kakao() {
		log.info(">>>>> 카카오 요일별 랭킹 출력");
		
		/* return "/daily/kakao_list"; */
		return "construction";
	}

}
