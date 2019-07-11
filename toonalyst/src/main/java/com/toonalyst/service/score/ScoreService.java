package com.toonalyst.service.score;

import java.util.List;

import com.toonalyst.domain.score.ScoreDTO;

public interface ScoreService {

	public List<ScoreDTO> list(long titleid);
	
	public int create(ScoreDTO sDto);
}
