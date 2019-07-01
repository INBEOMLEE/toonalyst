package com.toonalyst.service.board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.toonalyst.domain.board.CommentDTO;
import com.toonalyst.persistence.board.BoardDAO;
import com.toonalyst.persistence.board.CommentDAO;
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
	
	@Transactional
	@Override
	public int create(CommentDTO cDto, HttpSession session) {
		int bno = cDto.getBno();
		bDao.commentCntUpdate(bno, 1);
		return cDao.create(cDto);
	}
	
	@Transactional
	@Override
	public void delete(int cno, String id, int bno, HttpSession session) {
		cDao.delete(cno);
		bDao.commentCntUpdate(bno, 0);
	}

	@Override
	public CommentDTO read(int cno) {		
		return cDao.read(cno);
	}

}
