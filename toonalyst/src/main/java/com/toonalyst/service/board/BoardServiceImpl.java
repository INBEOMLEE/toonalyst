package com.toonalyst.service.board;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.persistence.board.BoardDAO;


import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO bDao;
	
	@Override
	public int register(BoardDTO bDto) {
		
		return bDao.register(bDto);
	}

}
