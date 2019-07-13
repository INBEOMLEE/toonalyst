package com.toonalyst.service.webtoon;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.toonalyst.domain.score.ScoreDTO;
import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.persistence.score.ScoreDAO;
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
	@Override
	public List<WebtoonDTO> selectList(String keyword) {
		return wDao.selectList(keyword);
	}
	@Override
	public void ratingUpdate(HashMap<String, Object> hashMap) {
		/*
		 * hashMap 키값과 들어있는 정보
		 * GOOD - 좋아요 갯수
		 * GOODP - 좋아요/평가 갯수 백분율
		 * HATE - 싫어요 갯수
		 * HATEP - 싫어요/평가 갯수 백분율
		 * RATING - 점수, 10점 만점이며 GOODP/10 값과 같음
		 * TITLEID - 작품 고유 번호
		 * TOTAL - 전체 평가 갯수
		 */
		wDao.ratingUpdate(hashMap);
	}
}
