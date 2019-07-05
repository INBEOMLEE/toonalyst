package com.toonalyst.controller.board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.domain.board.CommentDTO;
import com.toonalyst.service.board.CommentService;
import com.toonalyst.service.exp.ExpService;
import com.toonalyst.service.member.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value="/comment/*")
@Controller
public class CommentController {
	@Inject
	private CommentService service;
	@Inject
	private MemberService memservice;	
	@Inject
	private ExpService expservice;
	
	
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
	@ResponseBody
	@RequestMapping(value="create", method=RequestMethod.POST)
	public int create(CommentDTO cDto, HttpSession session) {
		log.info(">>>>> 댓글 등록 기능 구현");
		// 댓글 작성과 삭제 시 member 테이블의 boardcnt Update (code == 1 일 때 + 1, code == 0 일때 - 1) + session 초기화
		int result = service.create(cDto, session);
		
	    return result;
	}
	
	@ResponseBody
	@RequestMapping(value="delete", method=RequestMethod.GET)
	public void delete(int cno, String id, int bno, HttpSession session) {
		log.info(">>>>> 댓글 삭제 기능 구현");
		log.info("bno>>>>>>>>>" + bno);
		service.delete(cno, id, bno, session);
	}
	
	@RequestMapping(value = "/mycomment", method = RequestMethod.GET)
	public String myBoard(HttpSession session) {
		BoardDTO bDto = (BoardDTO) session.getAttribute("loginUser");
		
		return "/member/myComment";
	}
}
