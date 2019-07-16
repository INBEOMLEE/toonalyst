package com.toonalyst.service.score;

import java.text.Format;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.toonalyst.domain.score.ScoreDTO;
import com.toonalyst.persistence.score.ScoreDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ScoreServiceImpl implements ScoreService {
	
	@Inject
	private ScoreDAO sDao;
	
	@Override
	public List<ScoreDTO> list(long titleid) {
		return sDao.list(titleid);
	}

	@Override
	public int create(ScoreDTO sDto) {
		long current_time = System.currentTimeMillis(); // 현재 시간
		long  sdate = 0;
		
		if(sDao.read(sDto) != null) { // sDao.read(sDto) 는 해당 유저가 해당 웹툰 평가를 한적이 있는지 파악하는 메서드
			sdate = sDao.read(sDto).getSdate(); // 등록했던 시간 (type long)
		}
		
		if(current_time - sdate > 7*24*60*60*1000) { // 현재시간 - 등록했던 시간이 일주일보다 크면 등록해준다.
			sDto.setSdate(current_time);             // 평가 간격이 일주일보다 크면 등록을 해줘야함 그때 sdate에 현재 등록하는 시간을 넣어줌
			sDao.create(sDto);                       // 그리고 등록
			System.out.println("평가 등록 성공");
			return 1;                                // 리턴 1을 받으면 등록 성공
		} else {
			System.out.println("평가 등록 실패");
			return 0;                                // 리턴 0을 받으면 등록 실패 ( 에러메시지 띄우기 위한 변수 )
		}
	}

	@Override
	public HashMap<String, Object> scoreOne(long titleId) {
		/*
		 * 반환되는 hashMap 키값과 들어있는 정보
		 * GOOD - 좋아요 갯수
		 * GOODP - 좋아요/평가 갯수 백분율
		 * HATE - 싫어요 갯수
		 * HATEP - 싫어요/평가 갯수 백분율
		 * RATING - 점수, 10점 만점이며 GOODP/10 값과 같음
		 * TITLEID - 작품 고유 번호
		 * TOTAL - 전체 평가 갯수
		 */
		HashMap<String, Object> score = sDao.scoreOne(titleId);
		float good = Float.parseFloat(String.valueOf(score.get("GOOD")));
		float hate = Float.parseFloat(String.valueOf(score.get("HATE")));
		float total = Float.parseFloat(String.valueOf(score.get("TOTAL")));
		
		float goodp = good>0 ? good/total*100:0;
		float hatep = hate>0 ? hate/total*100:0;
		
		float rating = good>0? goodp/10:0;
		
		score.put("GOODP", goodp);
		score.put("HATEP", hatep);
		score.put("RATING", rating);
		
		return score;
	}

	@Override
	public List<HashMap<String, Object>> scoreChart(long titleId) {
		return sDao.scoreChart(titleId);
	}
	
}
