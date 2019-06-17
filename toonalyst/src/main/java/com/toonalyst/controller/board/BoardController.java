package com.toonalyst.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value="/board/*")
@Controller
public class BoardController {
	
	// 페이지 이동
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list() {
		log.info(">>>>> 게시글목록 출력");
		
		return "/board/list";
	}
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String view() {
		log.info(">>>>> 상세 게시글 출력");
		
		return "/board/view";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registerView() {
		log.info(">>>>> 게시글  등록 페이지출력");
		
		return "/board/register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registerPlay() {
		log.info(">>>>> 게시글  실제등록! ");
		
		
		return "/board/list";
	}
	

	// DB 작업

	
	
	// Ajax
	
}
