package com.toonalyst.controller.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toonalyst.domain.board.CommentDTO;
import com.toonalyst.service.board.CommentService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value="/comment/*")
@Controller
public class CommentController {
	@Inject
	private CommentService service;
	
	
	// 페이지 출력
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String listAll(int bno, Model model) {
		log.info(">>>>> 댓글 목록 출력");
		
		List<CommentDTO> list = service.listAll(bno);
		model.addAttribute("list", list);
		
		return "board/commentlist";
	}
	
	
	
	// DB작업
	
	// Ajax
	
	
}
