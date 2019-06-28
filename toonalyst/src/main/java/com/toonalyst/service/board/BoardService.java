package com.toonalyst.service.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.toonalyst.domain.board.BoardDTO;

public interface BoardService {
	// 게시글 등록 구현
	public int register(BoardDTO bDto, HttpSession session);
	// 게시글 목록 출력
	public List<BoardDTO> listAll(String sort_option, String search_option, String keyword, int start, int end, int bcategory);
	// 상세 게시글 (1건) 출력
	public BoardDTO read(int bno);
	// 레코드 수 구하기
	public int countArticle(String search_option, String keyword, int bcategory);
	// 게시글 삭제 작업 진행
	public void delete(int bno, int bcategory, HttpSession session);
	// 게시글 수정
	public void update(BoardDTO bDto);
	// 조회수 증가
	public void increaseViewCnt(int bno, HttpSession session);
	// 좋아요 스위치
	public int goodCheck(String id, int bno);
	// 좋아요 증가와 감소
	public int goodSwitch(String id, int bno);
	
	
}
