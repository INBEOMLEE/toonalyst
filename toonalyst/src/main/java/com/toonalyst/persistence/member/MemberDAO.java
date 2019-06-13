package com.toonalyst.persistence.member;

import java.util.HashMap;

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
}
