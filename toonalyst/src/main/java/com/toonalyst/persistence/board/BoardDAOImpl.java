package com.toonalyst.persistence.board;

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

}
