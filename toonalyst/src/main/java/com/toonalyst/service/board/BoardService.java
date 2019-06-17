package com.toonalyst.service.board;

import com.toonalyst.domain.board.BoardDTO;

public interface BoardService {
	// 게시글 등록 구현
	public int register(BoardDTO bDto);
}
