package com.toonalyst.persistence.score;

import java.util.List;

import com.toonalyst.domain.score.ScoreDTO;

public interface ScoreDAO {

	public List<ScoreDTO> listAll(long titleid);

	public void create(ScoreDTO sDto);
}
