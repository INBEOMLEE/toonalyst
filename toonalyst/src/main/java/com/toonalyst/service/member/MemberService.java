package com.toonalyst.service.member;

import javax.servlet.http.HttpSession;

import com.toonalyst.domain.member.MemberDTO;

public interface MemberService {
	// 로그인 기능 구현
	public int login(MemberDTO mDto, HttpSession session);
	// 로그아웃 기능 구현
	public void logout(HttpSession session);
}
