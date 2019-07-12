package com.toonalyst.persistence.webtoon;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.toonalyst.domain.webtoon.WebtoonDTO;

@Repository
public class WebtoonDAOImpl implements WebtoonDAO {

	@Inject
	private SqlSession sqlsession;
	
	@Override
	public void create(WebtoonDTO wDto) {
		sqlsession.insert("webtoon.create",wDto);
	}

	@Override
	public WebtoonDTO selectone(long titleId) {
		return sqlsession.selectOne("webtoon.selectone",titleId);
	}

	@Override
	public List<WebtoonDTO> selectList(String keyword) {
		List<WebtoonDTO> list = null;
		if (keyword.length() > 0) {
			list = sqlsession.selectList("webtoon.selectList", keyword+"%");
			if(list.size()<10) {
				list = sqlsession.selectList("webtoon.selectList", "%"+keyword+"%");
				Collections.sort(list, new Comparator<WebtoonDTO>() {
					@Override
					public int compare(WebtoonDTO o1, WebtoonDTO o2) {
						return o1.getTitleName().indexOf(keyword)-o2.getTitleName().indexOf(keyword);
					}
				});
			}
		}
		return list;
	}

}
