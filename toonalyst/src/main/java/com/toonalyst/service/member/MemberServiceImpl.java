 package com.toonalyst.service.member;

import java.util.HashMap;

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

	@Override
	public void create(MemberDTO mDto) {
		mDao.create(mDto);
		log.info(">>>>> 회원가입 성공");
	}

	@Override
	public int idCheck(String id) {
		int result = mDao.selectOne(id);
		if(result > 0) {
			log.info(">>>>> 이미 사용중인 아이디");
		} else {
			log.info(">>>>> 사용 가능한 아이디");
		}
		return result;
	}

	@Override
	public MemberDTO updateView(String id) {
		return mDao.updateView(id);
	}

	@Override
	public void updatePlay(MemberDTO mDto, HttpSession session) {
		mDao.updatePlay(mDto);
	}

	@Override
	public void pwUpdatePlay(String id, String pw, HttpSession session) {
		HashMap<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pw", pw);
		
		mDao.pwUpdatePlay(map);
		MemberDTO loginUser = mDao.updateView(id);
		session.removeAttribute("loginUser");
		session.setAttribute("loginUser", loginUser);
		
		MemberDTO d1234 = (MemberDTO) session.getAttribute("loginUser");
		
	}


}
