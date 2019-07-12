package com.toonalyst.persistence.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.toonalyst.domain.board.BoardDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject 
	private SqlSession sqlSession;
	
	@Override
	public int register(BoardDTO bDto) {
		
		return sqlSession.insert("board.register", bDto);
	}

	@Override
	public BoardDTO read(int bno) {
		return sqlSession.selectOne("board.read", bno);
	}

	@Override
	public int countArticle(String search_option, String keyword, int bcategory) {
		Map<String, Object> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		map.put("bcategory", bcategory);
		
		return sqlSession.selectOne("board.countArticle", map);
	}

	@Override
	public List<BoardDTO> listAll(String sort_option, String search_option, String keyword, int start, int end, int bcategory) {
		Map<String, Object> map = new HashMap<>();
		map.put("sort_option", sort_option);
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		map.put("bcategory", bcategory);
		
		return sqlSession.selectList("board.listAll", map);
	}
	
	@Override
	public int countArticle(String search_option, String keyword, int bcategory, String id) {
		Map<String, Object> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		map.put("bcategory", bcategory);
		map.put("id", id);
		
		return sqlSession.selectOne("board.countArticle", map);
	}

	@Override
	public List<BoardDTO> listAll(String sort_option, String search_option, String keyword, int start, int end, int bcategory, String id) {
		Map<String, Object> map = new HashMap<>();
		map.put("sort_option", sort_option);
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		map.put("bcategory", bcategory);
		map.put("id", id);
		
		return sqlSession.selectList("board.listAll", map);
	}

	@Override
	public void delete(int bno) {
		sqlSession.delete("board.delete", bno);
		
	}

	@Override
	public void update(BoardDTO bDto) {
		sqlSession.update("board.update", bDto);
		
	}

	@Override
	public void increaseViewCnt(int bno) {
		sqlSession.update("board.increaseViewCnt", bno);		
	}

	@Override
	public int goodCheck(Map<String, Object> map) {
		return sqlSession.selectOne("board.goodCheck", map);
	}

	@Override
	public void goodPlus(Map<String, Object> map) {
		sqlSession.insert("board.goodPlus", map);
		
	}

	@Override
	public void goodMinus(Map<String, Object> map) {
		sqlSession.delete("board.goodMinus", map);
	}

	@Override
	public int goodCntView(int bno) {
		return sqlSession.selectOne("board.goodCntView", bno);
		
	}

	@Override
	public void goodCntUpdate(int bgoodcnt, int bno) {
		Map<String, Object> map = new HashMap<>();
		map.put("bno", bno);
		map.put("bgoodcnt", bgoodcnt);
		sqlSession.selectOne("board.goodCntUpdate", map);
	}

	@Override
	public void commentCntUpdate(int bno, int code) {
		Map<String, Object> map = new HashMap<>();
		map.put("bno", bno);
		map.put("code", code);
		sqlSession.update("board.commentCntUpdate", map);
	}

	@Override
	public int selectBoardCnt(String id) {
		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+id);
		return sqlSession.selectOne("board.selectBoardCnt", id);
	}

	@Override
	public void updateBturn(HashMap<String, Integer> map) {
		sqlSession.update("board.updateBturn", map);
	}

	@Override
	public void answer(BoardDTO bDto) {
		sqlSession.insert("board.answer", bDto);
	}

	@Override
	public List<HashMap<String, String>> myBoardList(String id) {
		return sqlSession.selectList("board.myBoardList", id);
	}

	@Override
	public void addAttach(String fullName) {
		sqlSession.insert("board.addAttach", fullName);
			
	}

	

}
