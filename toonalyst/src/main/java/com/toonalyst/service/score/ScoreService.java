package com.toonalyst.service.score;

import java.util.List;

import com.toonalyst.domain.score.ScoreDTO;

public interface ScoreService {

	public List<ScoreDTO> listAll(long titleid);
	
	public void create(ScoreDTO sDto);
}
