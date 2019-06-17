package com.toonalyst.persistence.board;

import java.util.List;

import com.toonalyst.domain.board.BoardDTO;

public interface BoardDAO {
	
	public int register(BoardDTO bDto);

	public List<BoardDTO> listAll();

	public BoardDTO read(int bno);
}
