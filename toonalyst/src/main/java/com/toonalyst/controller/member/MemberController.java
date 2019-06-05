package com.toonalyst.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping(value="/member/*")
public class MemberController {

	// 페이지 이동
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public String joinView() {
		log.info(">>>>> 회원가입 페이지 출력");
		
		return "/member/join";
	}
	
	
	
	
	
	
	
	// DB 작업
	
	
	
	
	
	
	// Ajax
	
	
	
}
