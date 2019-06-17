package com.toonalyst.persistence.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.toonalyst.domain.board.CommentDTO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Repository
public class CommentDAOImpl implements CommentDAO {
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<CommentDTO> listAll(int bno) {
		return sqlSession.selectList("comment.listAll", bno);
	}

	@Override
	public int create(CommentDTO cDto) {
		return sqlSession.insert("comment.create", cDto);
	}

	@Override
	public void delete(int cno) {
		sqlSession.delete("comment.delete",cno);
	}

}
