package com.toonalyst.service.board;

import java.util.List;

import com.toonalyst.domain.board.BoardDTO;

public interface BoardService {
	// 게시글 등록 구현
	public int register(BoardDTO bDto);
	// 게시글 목록 출력
	public List<BoardDTO> listAll(String search_option, String keyword, int start, int end);
	// 상세 게시글 (1건) 출력
	public BoardDTO read(int bno);
	// 레코드 수 구하기
	public int countArticle(String search_option, String keyword);
	// 게시글 삭제 작업 진행
	public void delete(int bno);
	public void update(BoardDTO bDto);
	
}
