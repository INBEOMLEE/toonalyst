package com.toonalyst.service.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.toonalyst.domain.board.CommentDTO;

public interface CommentService {

	// 댓글 리스트 출력
	public List<CommentDTO> listAll(int bno);
	// 댓글 등록
	public int create(CommentDTO cDto, HttpSession session);
	// 댓글 삭제
	public void delete(int cno, String id, int bno, HttpSession session);
	// 댓글 조회
	public CommentDTO read(int cno);


}
