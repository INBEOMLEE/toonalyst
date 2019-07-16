package com.toonalyst.persistence.score;

import java.util.HashMap;
import java.util.List;

import com.toonalyst.domain.score.ScoreDTO;

public interface ScoreDAO {

	public List<ScoreDTO> list(long titleid);

	public void create(ScoreDTO sDto);

	public ScoreDTO read(ScoreDTO sDto);

	public HashMap<String, Object> scoreOne(long titleId);

	public List<HashMap<String, Object>> scoreChart(long titleId);

	public List<ScoreDTO> selectList(long titleId);
}
