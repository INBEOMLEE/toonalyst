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
	public BoardDTO read(int bno) {
		return bDao.read(bno);
	}

	@Override
	public int countArticle(String search_option, String keyword) {
		return bDao.countArticle(search_option, keyword);
	}

	@Override
	public List<BoardDTO> listAll(String search_option, String keyword, int start, int end) {
		return bDao.listAll(search_option, keyword, start, end);
	}

}
