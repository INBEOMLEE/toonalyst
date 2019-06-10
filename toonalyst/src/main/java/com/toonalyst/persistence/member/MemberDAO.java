package com.toonalyst.persistence.member;

import com.toonalyst.domain.member.MemberDTO;

public interface MemberDAO {
	// 로그인 기능 구현
	public MemberDTO login(MemberDTO mDto);
}
