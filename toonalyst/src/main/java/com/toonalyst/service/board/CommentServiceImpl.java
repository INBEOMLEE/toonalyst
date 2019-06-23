package com.toonalyst.service.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.toonalyst.domain.board.CommentDTO;
import com.toonalyst.persistence.board.BoardDAO;
import com.toonalyst.persistence.board.CommentDAO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class CommentServiceImpl implements CommentService {
	@Inject
	private CommentDAO cDao;
	@Inject
	private BoardDAO bDao;
	
	@Override
	public List<CommentDTO> listAll(int bno) {
		return cDao.listAll(bno);
	}

	@Override
	public int create(CommentDTO cDto) {
		int bno = cDto.getBno();
		bDao.commentCntUpdate(bno, 1);
		return cDao.create(cDto);
	}

	@Override
	public void delete(int cno, int bno) {
		cDao.delete(cno);
		bDao.commentCntUpdate(bno, 0);
	}

}
