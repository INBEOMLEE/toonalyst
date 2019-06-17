package com.toonalyst.service.board;

import java.util.List;

import com.toonalyst.domain.board.CommentDTO;

public interface CommentService {

	// 댓글 리스트 출력
	public List<CommentDTO> listAll(int bno);

}
