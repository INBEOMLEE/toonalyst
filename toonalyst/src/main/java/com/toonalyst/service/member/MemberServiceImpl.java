package com.toonalyst.service.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.toonalyst.domain.member.MemberDTO;
import com.toonalyst.persistence.member.MemberDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO mDao;
	
	// 로그인 기능 구현
	@Override
	public int login(MemberDTO mDto, HttpSession session) {
		
		MemberDTO loginUser = mDao.login(mDto);
		
		if(loginUser != null) { // 로그인 성공
			session.removeAttribute("loginUser");
			session.setAttribute("loginUser", loginUser);
			log.info(">>>>> 로그인 성공");
			return 1;
		}
		log.info(">>>>> 로그인 실패");
		return 0;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
		log.info(">>>>> 로그아웃 성공");
	}

}
