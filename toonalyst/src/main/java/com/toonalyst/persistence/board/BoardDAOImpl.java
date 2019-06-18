package com.toonalyst.persistence.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.toonalyst.domain.board.BoardDTO;

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
	public int countArticle(String search_option, String keyword, int flag) {
		Map<String, Object> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		map.put("flag", flag);
		
		return sqlSession.selectOne("board.countArticle", map);
	}

	@Override
	public List<BoardDTO> listAll(String search_option, String keyword, int start, int end, int flag) {
		Map<String, Object> map = new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", "%"+keyword+"%");
		map.put("start", start);
		map.put("end", end);
		map.put("flag", flag);
		
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

}
