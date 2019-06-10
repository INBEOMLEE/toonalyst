package com.toonalyst.controller.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String loginView() {
		log.info(">>>>> 로그인 페이지 출력");
		
		return "/member/login";
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
	
	
	// DB 작업
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String loginPlay(MemberDTO mDto, HttpSession session, Model model) {
		log.info(">>>>> 로그인 기능 구현");
		
		int result = service.login(mDto, session);
		
		if(result > 0) return "index";
		
		
		model.addAttribute("result", result);
		return "/member/login";
	}
	
	
	
	// Ajax
	
	
	
}
