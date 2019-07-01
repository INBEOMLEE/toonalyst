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
import org.springframework.web.bind.annotation.ResponseBody;

import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.domain.member.MemberDTO;
import com.toonalyst.service.board.BoardService;
import com.toonalyst.service.board.Pager;
import com.toonalyst.service.exp.ExpService;
import com.toonalyst.service.member.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping(value="/board/*")
@Controller
public class BoardController {
	@Inject
	private BoardService service;
	@Inject
	private ExpService expservice;
	@Inject
	private MemberService memservice;
	
	// 페이지 이동
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(
			Model model,
			@RequestParam(defaultValue = "new") String sort_option,
			@RequestParam(defaultValue = "all") String search_option,
			@RequestParam(defaultValue = "") String keyword,
			@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int bcategory ) {
		log.info(">>>>> 게시글 목록 출력");
		
		// 레코드 개수 계산
		int count = service.countArticle(search_option, keyword, bcategory);
		
		// 페이지 관련 설정
		Pager pager = new Pager(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		// 페이지 출력할 게시글 목록
		List<BoardDTO> list = service.listAll(sort_option, search_option, keyword, start, end, bcategory);
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("count", count);
		map.put("pager", pager);
		map.put("sort_option", sort_option);
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		map.put("bcategory", bcategory);
		
		model.addAttribute("map", map);
		
		if(bcategory < 2) {
			return "board/boardlist";
		} else {
			return "board/freeboard_list";
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
			@RequestParam(defaultValue = "0") int bcategory
			) {
		log.info(">>>>> 게시글 목록 출력");
		model.addAttribute("sort_option", sort_option);
		model.addAttribute("search_option", search_option);
		model.addAttribute("keyword", keyword);
		model.addAttribute("curPage", curPage);
		model.addAttribute("bcategory", bcategory);
		return "/board/list";
	}
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String view(int bno, int bcategory, Model model, HttpSession session) {
		log.info(">>>>> 상세 게시글 출력");
		String page = "";
		
		service.increaseViewCnt(bno, session);
		BoardDTO bDto = service.read(bno);
		model.addAttribute("bDto", bDto);
		model.addAttribute("bcategory", bcategory);
		
		if(bDto.getBcategory()<2) {
			page = "/board/view";
		}else {
			page = "/board/freeboard_view";
		}
		return page;
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registerView(int bcategory, Model model) {
		log.info(">>>>> 게시글  등록 페이지 출력");
		model.addAttribute("bcategory", bcategory);
		return "/board/register";
	}
	
	@RequestMapping(value="/freeRegister", method=RequestMethod.GET)
	public String freeRegisterView() {
		log.info(">>>>> 자유 게시글  등록 페이지 출력");
		return "/board/freeboard_register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
    public String registerPlay(BoardDTO bDto, HttpSession session) {
       log.info(">>>>> 게시글  등록 기능 구현 ");
       String boardUrl = "";
       service.register(bDto, session);
       
       
       if(bDto.getBcategory() < 2) {
    	   boardUrl = "boardlist";
       } else {
    	   boardUrl = "list";
       }
       
       
       return "redirect:/board/"+boardUrl+"?bcategory=" + bDto.getBcategory(); 
    }
	
	
	// 게시글 삭제 작업 
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int bno, int bcategory, HttpSession session) {
		
		// 평문통신이어서 보안이 이루어지지 않고있는데 패킷을 볼 수 있다면 ID와PW도 드러나고 변조해서 보낼 수도있는데 확인작업이 없다.
		// 최소한의 정보로 모든 정보를 뽑아내서 그 정보로 동작하게 만드는 게 좋다
		// bno가 고유번호이니까 그 정보에서 id를 가져와서 경험치를 처리하는게 바람직하다. 
		// 삭제할 게시물 아이디와 == 현재 세션의 아이디 
		// 다르면 남이 남의 게시물 삭제를 시도한다는 뜻이다. 운영자와 본인 외에는 비정상적인 접근으로 처리해서 보낸다.
		
		String boardUrl = "";
		MemberDTO mDto = (MemberDTO) session.getAttribute("loginUser");
		
		BoardDTO bDto = service.read(bno);
		
		if(bDto.getBwriter().equals(mDto.getId())) {
		    service.delete(bno, bcategory, session);
		}
		
	    if(bcategory < 2) {
	    	   boardUrl = "boardlist";
	       } else {
	    	   boardUrl = "list";
	       }
	       
	       return "redirect:/board/"+boardUrl+"?bcategory=" + bcategory; 
	}
	
	// 게시글 수정 출력
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String updateView(int bno, int bcategory, Model model) {
		 log.info(">>>>> 게시글 수정 페이지 출력");
		BoardDTO bDto = service.read(bno);
		model.addAttribute("bDto", bDto);
		model.addAttribute("bcategory", bcategory);
		return "board/modify"; 
	}
	
	// 게시글 수정 기능 구현
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePlay(BoardDTO bDto, Model model) {
		log.info(">>>>> 게시글 수정 기능 구현 ");
		String boardUrl = "";
		
		service.update(bDto);
		
		if(bDto.getBcategory() < 2) {
			boardUrl = "view";
		} else {
			boardUrl = "freeView";
		}
		
		return "redirect:/board/"+boardUrl+"?bno=" + bDto.getBno() + "&bcategory=" + bDto.getBcategory();
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/goodcheck", method = RequestMethod.POST)
	public int goodCheck(String id, int bno) {
		log.info(">>>>> AJAX: 좋아요 눌렀을 때");
		
		return service.goodCheck(id, bno);
	}
	
	@ResponseBody
	@RequestMapping(value="/goodswitch", method = RequestMethod.POST)
	public int goodSwitch(String id, int bno) {
		log.info(">>>>> AJAX: 좋아요 눌렀을 때 증감");
		int bgoodcnt = service.goodSwitch(id, bno);
		
		return bgoodcnt;
	}
	
	// 답글 등록 페이지 출력
	@RequestMapping(value="/answer", method = RequestMethod.GET)
	public String answer(Model model, int bno) {
		log.info(">>>>> 답글 등록 페이지 출력");
		
		// 답글을 달려고 하는 게시글 내용
		BoardDTO bDto = service.read(bno);
		bDto.setBcontent("(이전 게시글 내용)<br>" + bDto.getBcontent());
		model.addAttribute("bDto", bDto);
		model.addAttribute("bcategory", bDto.getBcategory());
		String boardUrl = "";
		
		if(bDto.getBcategory() < 2) {
			boardUrl = "answer";
		} else {
			boardUrl = "freeboard_answer";
		}
		return "board/" + boardUrl;
	}
	
	// 답글 등록 Play
	@RequestMapping(value="/answer", method = RequestMethod.POST)
	public String answerPlay(BoardDTO bDto, HttpSession session) {
		log.info(">>>>> 답글 기능 구현");
		System.out.println("==========================" + bDto.toString());
		BoardDTO one = service.read(bDto.getBno());
		log.info("기존 게시글 정보 =====================================");
		log.info(one.toString());
		log.info("===================================================");
		bDto.setBorigin(one.getBorigin());
		bDto.setBturn(one.getBturn());
		bDto.setBdepth(one.getBdepth());
		
		// DB 등록
		service.answer(bDto, session);
		
		if(bDto.getBcategory() < 2) {
			return "redirect:/board/boardlist?bcategory=" + bDto.getBcategory();
		} else {
			return "redirect:/board/list?bcategory=" + bDto.getBcategory();
		}
	}
	
	
}
