package com.toonalyst.service.score;

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
	public List<ScoreDTO> listAll(long titleid) {
		return sDao.listAll(titleid);
	}

	@Override
	public void create(ScoreDTO sDto) {
		sDao.create(sDto);
	}
	
}
