package com.toonalyst.persistence.exp;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.toonalyst.domain.exp.ExpLogDTO;

@Repository
public class ExpDAOImpl implements ExpDAO {

	@Inject
	private SqlSession sqlsession;
	
	@Override
	public int expCodeToExpval(int code) {
		return sqlsession.selectOne("exp.codeToVal", code);
	}

	@Override
	public void expUpdate(String id, int exp) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("exp", exp);
		sqlsession.update("exp.expUpdate", map);
	}

	@Override
	public void expLogInsert(ExpLogDTO eDto) {
		sqlsession.insert("exp.logInsert", eDto);
	}

	@Override
	public void totalexpToLevel(String id) {
		sqlsession.update("exp.level", id);
	}

	@Override
	public List<ExpLogDTO> expLogList(String id) {
		return sqlsession.selectList("exp.logSelect", id);
	}

}
