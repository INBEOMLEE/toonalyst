package com.toonalyst.controller.board;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.service.board.BoardService;
import com.toonalyst.service.board.Pager;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value="/board/*")
@Controller
public class BoardController {
	@Inject
	private BoardService service;
	
	// 페이지 이동
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(
			Model model,
			@RequestParam(defaultValue = "new") String sort_option,
			@RequestParam(defaultValue = "all") String search_option,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int flag ) {
		log.info(">>>>> 게시글 목록 출력");
		
		// 레코드 개수 계산
		int count = service.countArticle(search_option, keyword, flag);
		
		// 페이지 관련 설정
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		// 페이지 출력할 게시글 목록
		List<BoardDTO> list = service.listAll(sort_option, search_option, keyword, start, end, flag);
		
		HashMap<String, Object> map = new HashMap<>();
		log.info(">>>>>>>>>>>>>list☆★☆★☆★☆★☆★☆★>>>>>>>>>>"+list.toString());
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		map.put("sort_option", sort_option);
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		map.put("flag", flag);
		log.info("★★★★★★★★★★★★★★★" + flag);
		
		model.addAttribute("map", map);
		
		if(flag == 2) {
			return "board/freeboard_list";
		} else {
			return "board/boardlist";
		}
	}
	
	// 페이지 이동
	@RequestMapping(value="/boardlist", method=RequestMethod.GET)
	public String boardlist(
			Model model,
			@RequestParam(defaultValue = "new") String sort_option,
			@RequestParam(defaultValue = "all") String search_option,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int flag
			) {
		log.info(">>>>> 게시글 목록 출력");
		model.addAttribute("sort_option", sort_option);
		model.addAttribute("search_option", search_option);
		model.addAttribute("keyword", keyword);
		model.addAttribute("curPage", curPage);
		model.addAttribute("flag", flag);
		
		return "/board/list";
	}
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String view(int bno, Model model, HttpSession session) {
		log.info(">>>>> 상세 게시글 출력");
		
		// 조회수 증가처리
		service.increaseViewCnt(bno, session);
		
		BoardDTO bDto = service.read(bno);
		model.addAttribute("bDto", bDto);
		
		return "/board/view";
	}
	
	@RequestMapping(value="/freeView", method=RequestMethod.GET)
	public String freeboardView(int bno, Model model, HttpSession session) {
		log.info(">>>>> 자유게시판 상세 게시글 출력");
		
		// 조회수 증가처리
		service.increaseViewCnt(bno, session);
		
		BoardDTO bDto = service.read(bno);
		model.addAttribute("bDto", bDto);
		
		return "/board/freeboard_view";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registerView() {
		log.info(">>>>> 게시글  등록 페이지출력");
		
		return "/board/register";
	}
	
	@RequestMapping(value="/freeRegister", method=RequestMethod.GET)
	public String freeRegisterView() {
		log.info(">>>>> 게시글  등록 페이지출력");
		
		return "/board/freeboard_register";
	}
	
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
    public String registerPlay(BoardDTO bDto) {
       log.info(">>>>> 게시글  실제등록! ");
       
       log.info(">>>>> 데이터 등록유뮤 확인 " + bDto.toString());
       service.register(bDto);
       
		/* return "redirect:/board/list"; */
       
       return "redirect:/board/view?bno=" + bDto.getBno(); 
    }
	
	
	// 게시글 삭제 작업 
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int bno) {
		
		service.delete(bno);
		
				
		return "redirect:/board/list"; 
	}
	
	// 게시글 수정 출력
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String updateView(int bno, Model model) {
		
		BoardDTO bDto = service.read(bno);
		model.addAttribute("bDto",bDto);
		
		
				
		return "board/modify"; 
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePlay(int bno, BoardDTO bDto, Model model) {
		
		service.update(bDto);
		
		
		
		return "redirect:/board/view?bno=" + bDto.getBno(); 
	}
	
	

	// DB 작업

	
	
	// Ajax
	
}
