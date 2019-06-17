package com.toonalyst.persistence.board;

import java.util.List;

import com.toonalyst.domain.board.CommentDTO;

public interface CommentDAO {

	public List<CommentDTO> listAll(int bno);

	public int create(CommentDTO cDto);

	public void delete(int cno);

}
