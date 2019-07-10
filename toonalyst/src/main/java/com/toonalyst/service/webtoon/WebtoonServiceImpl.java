package com.toonalyst.service.webtoon;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.persistence.webtoon.WebtoonDAO;

@Service
public class WebtoonServiceImpl implements WebtoonService{
	@Inject
	private WebtoonDAO wDao;
	@Override
	public void create(WebtoonDTO wDto) {
		wDao.create(wDto);
	}
	@Override
	public WebtoonDTO selectone(long titleId) {
		return wDao.selectone(titleId);
	}
}
