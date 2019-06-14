package com.toonalyst.persistence.webtoon;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.toonalyst.domain.webtoon.WebtoonDTO;

@Repository
public class WebtoonDAOImpl implements WebtoonDAO {

	@Inject
	SqlSession sqlsession;
	
	@Override
	public void create(WebtoonDTO wDto) {
		sqlsession.insert("webtoon.create",wDto);
	}

	@Override
	public WebtoonDTO selectone(int titleId) {
		return sqlsession.selectOne("webtoon.selectone",titleId);
	}

}
