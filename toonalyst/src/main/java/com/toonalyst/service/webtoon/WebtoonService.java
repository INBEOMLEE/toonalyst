package com.toonalyst.service.webtoon;

import com.toonalyst.domain.webtoon.WebtoonDTO;

public interface WebtoonService {
	public void create(WebtoonDTO wDto);
	public WebtoonDTO selectone(int titleId);
}
