package com.toonalyst.service.score;

import java.util.Date;
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
	
}
