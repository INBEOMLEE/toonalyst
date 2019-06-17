package com.toonalyst.service.board;

import java.util.List;

import com.toonalyst.domain.board.BoardDTO;

public interface BoardService {
	// 게시글 등록 구현
	public int register(BoardDTO bDto);
	// 게시글 목록 출력
	public List<BoardDTO> listAll();
	// 상세 게시글 (1건) 출력
	public BoardDTO read(int bno);
	
}
