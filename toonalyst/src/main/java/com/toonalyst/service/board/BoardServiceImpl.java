package com.toonalyst.service.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.persistence.board.BoardDAO;


import lombok.extern.slf4j.Slf4j;
@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO bDao;
	
	@Transactional
	@Override
	public int register(BoardDTO bDto, HttpSession session) {
		
		return bDao.register(bDto);
	}

	@Override
	public BoardDTO read(int bno) {
		return bDao.read(bno);
	}

	@Override
	public int countArticle(String search_option, String keyword, int bcategory) {
		return bDao.countArticle(search_option, keyword, bcategory);
	}

	@Override
	public List<BoardDTO> listAll(String sort_option, String search_option, String keyword, int start, int end, int bcategory) {
		return bDao.listAll(sort_option, search_option, keyword, start, end, bcategory);
	}

	@Transactional
	@Override
	public void delete(int bno, int bcategory, HttpSession session) {
		 bDao.delete(bno);
	}

	@Override
	public void update(BoardDTO bDto) {
		bDao.update(bDto);
		
	}

	@Override
	public void increaseViewCnt(int bno, HttpSession session) {
		long update_time=0;
		if(session.getAttribute("update_time_"+bno)!=null) {
			// 최근에 조회수를 올린 시간
			update_time = (long)session.getAttribute("update_time_"+bno);
		}
		long current_time = System.currentTimeMillis();
		
		// 일정 시간이 경과한 후 조회수 증가 처리
		if(current_time - update_time > 24*60*60*1000) {
			// 조회수 증가 처리
			bDao.increaseViewCnt(bno);
			
			// 조회수를 올린 시간 저장
			session.setAttribute("update_time_"+bno, current_time);
			
		}
	}

	@Override
	public int goodCheck(String id, int bno) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("bno", bno);
		
		return bDao.goodCheck(map);
	}

	@Override
	public int goodSwitch(String id, int bno) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("bno", bno);
		
		int result = bDao.goodCheck(map);
		if (result > 0) { // 좋아요 누른 상태인 경우
			bDao.goodMinus(map);
			
		} else { // 좋아요 누르지 않은 상태인 경우
			bDao.goodPlus(map);
		}
		
		// tbl_toonalyst_good 테이블 COUNT해서 tbl_toonalyst_board에 update함
		int bgoodcnt = bDao.goodCntView(bno);
		bDao.goodCntUpdate(bgoodcnt, bno);
		
		return bgoodcnt;
	}

	@Override
	public void answer(BoardDTO bDto, HttpSession session) {
		// 비즈니스 로직 : 답글 등록
		// 1. 답글을 달려고 하는 게시글의 bturn 보다 큰 답글들의 bturn + 1 작업
		HashMap<String, Integer> map = new HashMap<>();
		map.put("borigin", bDto.getBorigin());
		map.put("bturn", bDto.getBturn());
		bDao.updateBturn(map);
		// 2. 답글 테이블에 등록
		bDto.setBturn(bDto.getBturn() + 1);
		bDto.setBdepth(bDto.getBdepth() + 1);
		bDao.answer(bDto);
	}

	@Override
	public List<HashMap<String, String>> myBoardList(String id) {
		return bDao.myBoardList(id);
	}

	@Override
	public List<BoardDTO> listAll(String sort_option, String search_option, String keyword, int start, int end,
			int bcategory, String id) {
		return bDao.listAll(sort_option, search_option, keyword, start, end, bcategory, id);
	}

	@Override
	public int countArticle(String search_option, String keyword, int bcategory, String id) {
		return bDao.countArticle(search_option, keyword, bcategory, id);
	} 

}
