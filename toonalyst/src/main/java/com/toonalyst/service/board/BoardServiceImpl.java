package com.toonalyst.service.board;

import java.util.List;

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

	@Override
	public List<BoardDTO> listAll() {
		return bDao.listAll();
	}

	@Override
	public BoardDTO read(int bno) {
		return bDao.read(bno);
	}

}
