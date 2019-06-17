package com.toonalyst.service.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.toonalyst.domain.board.CommentDTO;
import com.toonalyst.persistence.board.CommentDAO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class CommentServiceImpl implements CommentService {
	@Inject
	private CommentDAO cDao;
	
	@Override
	public List<CommentDTO> listAll(int bno) {
		return cDao.listAll(bno);
	}

	@Override
	public int create(CommentDTO cDto) {
		return cDao.create(cDto);
	}

	@Override
	public void delete(int cno) {
		cDao.delete(cno);
	}

}
