package com.toonalyst.service.member;



import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.domain.member.MemberDTO;

public interface MemberService {
	// 로그인 기능 구현
	public int login(MemberDTO mDto, HttpSession session);
	// 로그아웃 기능 구현
	public void logout(HttpSession session);
	// 회원가입 기능 구현
	public void create(MemberDTO mDto);
	// 아이디 중복 체크
	public int idCheck(String id);
	// 회원정보 가져오기
	public MemberDTO updateView(String id);
	// 회원수정 기능 구현
	public void updatePlay(MemberDTO mDto, HttpSession session);
	// 비밀번호 수정 구현
	public void pwUpdatePlay(String id, String pw, HttpSession session);
	// 현재 비밀번호와 입력한 비밀번호 같은지 체크
	public int pwCheck(String id, String pw);
	// 회원탈퇴 기능 구현
	public void delete(HttpSession session);
	// 아이디 찾기 기능 구현
	public String idFind(String name, String phone);
	// 비밀번호 찾기 기능 구현
	public int pwFind(String id, String name, String phone);
	// 비밀번호 변경
	public void changePw(String id, String pw);
	// 마이페이지 게시글 출력
	public HashMap<String, List<BoardDTO>> noticetList();	

	
	
}
