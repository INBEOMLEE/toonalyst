package com.toonalyst.persistence.member;

import java.util.HashMap;
import java.util.List;

import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.domain.member.MemberDTO;

public interface MemberDAO {
	// 로그인 기능 구현
	public MemberDTO login(MemberDTO mDto);
	// 회원가입 기능 구현
	public void create(MemberDTO mDto);
	// 아이디 중복 체크
	public int selectOne(String id);
	// 회원정보 가져오기
	public MemberDTO updateView(String id);
	// 회원수정 기능 구현
	public void updatePlay(MemberDTO mDto);
	// 비밀번호 수정 기능 구현
	public void pwUpdatePlay(HashMap<String, String> map);
	// 현재 비밀번호와 입력한 비밀번호 같은지 체크
	public int pwCheck(HashMap<String, String> map);
	// 회원탈퇴 기능 구현
	public int delete(String id);
	// 아이디 찾기 기능 구현
	public String idFind(String name, String phone);
	// 비밀번호 찾기 기능 구현
	public int pwFind(String id, String name, String phone);
	// 비밀번호 변경 기능 구현
	public void changePw(String id, String pw);
	// 마이페이지 조회	
	public List<BoardDTO> noticeList(int bcategory);
}