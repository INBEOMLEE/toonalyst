package com.toonalyst.controller.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.service.board.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value="/board/*")
@Controller
public class BoardController {
	@Inject
	private BoardService service;
	
	// 페이지 이동
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) {
		log.info(">>>>> 게시글목록 출력");
		
		// 페이지 출력할 게시글 목록
		List<BoardDTO> list = service.listAll();
		model.addAttribute("list", list);
		
		return "/board/list";
	}
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String view(int bno, Model model) {
		log.info(">>>>> 상세 게시글 출력");
		
		BoardDTO bDto = service.read(bno);
		model.addAttribute("bDto", bDto);
		
		return "/board/view";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registerView() {
		log.info(">>>>> 게시글  등록 페이지출력");
		
		return "/board/register";
	}
	
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
    public String registerPlay(BoardDTO bDto) {
       log.info(">>>>> 게시글  실제등록! ");
       
       log.info(">>>>> 데이터 등록유뮤 확인 " + bDto.toString());
       service.register(bDto);
       
       return "redirect:/board/list";
    }
	

	// DB 작업

	
	
	// Ajax
	
}
