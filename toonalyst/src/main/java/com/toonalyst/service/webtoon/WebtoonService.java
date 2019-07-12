package com.toonalyst.service.webtoon;

import java.util.List;

import com.toonalyst.domain.webtoon.WebtoonDTO;

public interface WebtoonService {
	public void create(WebtoonDTO wDto);
	public WebtoonDTO selectone(long titleId);
	public List<WebtoonDTO> selectList(String keyword);
}
