package com.toonalyst.service.score;

import java.util.HashMap;
import java.util.List;

import com.toonalyst.domain.score.ScoreDTO;

public interface ScoreService {

	public List<ScoreDTO> list(long titleid);
	
	public int create(ScoreDTO sDto);

	public HashMap<String, Object> scoreOne(long titleId);
}
