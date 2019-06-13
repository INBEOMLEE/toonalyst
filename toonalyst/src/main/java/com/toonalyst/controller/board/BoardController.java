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
	
	// 게시글 전체리스트 출력
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list() {
		log.info(">>>>> 게시글목록 출력");
		
		return "/board/list";
	}

	// DB 작업

	
	
	// Ajax
	
}
