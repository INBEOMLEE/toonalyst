package com.toonalyst.service.score;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.toonalyst.domain.score.ScoreDTO;

public interface ScoreService {

	public List<ScoreDTO> list(long titleid);
	
	public int create(ScoreDTO sDto);

	public HashMap<String, Object> scoreOne(long titleId);

	public List<HashMap<String, Object>> scoreChart(long titleId);

	public HashMap<String, String> scoreCheck(long titleId);
}
