package com.toonalyst.persistence.score;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.toonalyst.domain.score.ScoreDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class ScoreDAOImpl implements ScoreDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<ScoreDTO> list(long titleid) {
		return sqlSession.selectList("score.list", titleid);
	}

	@Override
	public void create(ScoreDTO sDto) {
		sqlSession.insert("score.create", sDto);
	}

	@Override
	public ScoreDTO read(ScoreDTO sDto) {
		return sqlSession.selectOne("score.read", sDto);
	}

	@Override
	public HashMap<String, Object> scoreOne(long titleId) {
		return sqlSession.selectOne("score.scoreOne", titleId);
	}

}
