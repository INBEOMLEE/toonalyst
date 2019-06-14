package com.toonalyst.persistence.webtoon;

import com.toonalyst.domain.webtoon.WebtoonDTO;

public interface WebtoonDAO {

	public void create(WebtoonDTO wDto);
	public WebtoonDTO selectone(int titleId);
}
