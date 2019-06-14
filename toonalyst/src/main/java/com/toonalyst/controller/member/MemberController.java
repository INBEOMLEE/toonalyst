package com.toonalyst.controller.member;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toonalyst.domain.member.MemberDTO;
import com.toonalyst.service.member.MemberService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping(value="/member/*")
public class MemberController {
	
	@Inject
	private MemberService service;

	// 페이지 이동
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public String joinView() {
		log.info(">>>>> 회원가입 페이지 출력");
		
		return "/member/join";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String loginView(HttpSession session, HttpServletRequest request) {
		log.info(">>>>> 로그인 페이지 출력");
		String referer = request.getHeader("referer");
		session.setAttribute("URI", referer);
		return "/member/login";
	}
	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public String myPageView() {
		log.info(">>>>> 마이페이지 출력");
		
		return "/member/mypage";
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutView(HttpSession session) {
		log.info(">>>>> 로그아웃 페이지 출력");
		service.logout(session);
		
		return "index";
	}
	
	
	@RequestMapping(value="/idpw", method = RequestMethod.GET)
	public String idpwView() {
		log.info(">>>>> 아이디 / 비밀번호 찾기 페이지 출력");
		
		return "/member/idpw";
	}
	
	@RequestMapping(value="/changepw", method = RequestMethod.GET)
	public String changepwView() {
		log.info(">>>>> 비밀번호 수정 출력");
		
		return "/member/changepw";
	}
	
	@RequestMapping(value="/update", method = RequestMethod.GET)
	public String updateView(HttpSession session, Model model) {
		log.info(">>>>> 회원정보 수정 페이지 출력");
		MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		MemberDTO mDto = service.updateView(id);
		model.addAttribute("mDto", mDto);
		return "/member/modify";
	}
	
	@RequestMapping(value="/pwupdate", method = RequestMethod.GET)
	public String pwupdateView() {
		log.info(">>>>> 비밀번호 수정 페이지 출력");
		return "/member/pwupdate";
	}
	
	
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String deleteView() {
		log.info(">>>>> 회원 탈퇴 페이지 출력");
		return "/member/delete";
	}


	
	
	// DB 작업
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String loginPlay(MemberDTO mDto, HttpSession session, Model model) {
		log.info(">>>>> 로그인 기능 구현");
		
		int result = service.login(mDto, session);
		
		if(result > 0) return "redirect:"+ session.getAttribute("URI");
		
		
		model.addAttribute("result", result);
		return "/member/login";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String create(MemberDTO mDto) {
		log.info(">>>>> 회원가입 기능 구현");
		service.create(mDto);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public String updatePlay(MemberDTO mDto, HttpSession session) {
		log.info(">>>>> 회원수정 기능 구현");
		
		service.updatePlay(mDto, session);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/pwupdate", method = RequestMethod.POST)
	public String pwUpdatePlay(HttpSession session, String pw) {
		log.info(">>>>> 비밀번호 수정 기능 구현");
		MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		
		service.pwUpdatePlay(id, pw, session);
		
		return "redirect:/";
	}
	
	// Ajax
	@ResponseBody
	@RequestMapping(value="/idcheck", method=RequestMethod.POST)
	public int idCheck(String id) {
		log.info(">>>>> ajax: id check" );
		
		return service.idCheck(id);
	}
	
	@ResponseBody
	@RequestMapping(value="/pwcheck", method=RequestMethod.POST)
	public int pwcheck(String pw, HttpSession session) {
		log.info(">>>>> ajax: pw check" );
		MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		return service.pwCheck(id, pw);
	}
	
	
}
