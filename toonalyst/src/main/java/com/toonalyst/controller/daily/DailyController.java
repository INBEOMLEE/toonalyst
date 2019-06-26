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
		log.info(">>>>> 요일별 랭킹 출력");
		
		return "/daily/naver_list";
	}

}
