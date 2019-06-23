 package com.toonalyst.service.member;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;


import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.domain.member.MemberDTO;
import com.toonalyst.persistence.board.BoardDAO;
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
		session.removeAttribute("loginUser");
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
		
	}

	@Override
	public int pwCheck(String id, String pw) {
		HashMap<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pw", pw);
		
		return mDao.pwCheck(map);
	}

	@Override
	public void delete(HttpSession session) {
		log.info(">>>>세션안에있는것>>>>"+session.getAttribute("loginUser"));
		MemberDTO mDto = (MemberDTO) session.getAttribute("loginUser");
		String id = mDto.getId();
		log.info(">>>>>>>mDto아이디맞나용>>"+mDto.getId());
		log.info(">>>>>>>ID아이디맞나용>>"+id);
		int result = mDao.delete(id);
		if(result > 0) {
			session.invalidate();
		}
	}

	@Override
	public String idFind(String name, String phone) {
		return mDao.idFind(name, phone);
	}

	@Override
	public int pwFind(String id, String name, String phone) {
		return mDao.pwFind(id, name, phone);
	}

	@Override
	public void changePw(String id, String pw) {
		mDao.changePw(id, pw);
	}

	@Override
	public HashMap<String, List<BoardDTO>> noticetList() {
		List<BoardDTO> nList = mDao.noticeList(0);
		List<BoardDTO> qList = mDao.noticeList(1);
		List<BoardDTO> bList = mDao.noticeList(2);
		
		HashMap<String, List<BoardDTO>> map = new HashMap<>();
		map.put("nList", nList);
		map.put("qList", qList);
		map.put("bList", bList);
		return map;
	}

	@Override
	public void boardCntUpdate(String id, int code, HttpSession session) {
		mDao.boardCntUpdate(id, code);
		session.removeAttribute("loginUser");
		MemberDTO loginUser = mDao.updateView(id);
		session.setAttribute("loginUser", loginUser);
		log.info("게시글 작성 시 boardCnt 업데이트 및 세션 초기화 완료");
	}

	@Override
	public void commentCntUpdate(String id, int code, HttpSession session) {
		mDao.commentCntUpdate(id, code);
		session.removeAttribute("loginUser");
		MemberDTO loginUser = mDao.updateView(id);
		session.setAttribute("loginUser", loginUser);
		log.info("댓글 작성 시 commentCnt 업데이트 및 세션 초기화 완료");
	} 

	

	



}
