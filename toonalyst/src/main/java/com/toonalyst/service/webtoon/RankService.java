package com.toonalyst.service.webtoon;

import java.io.IOException;
import java.util.List;

import com.toonalyst.domain.webtoon.WebtoonDTO;

public interface RankService {
	public List<WebtoonDTO> naver();

	public List<WebtoonDTO> lezhin();
}
