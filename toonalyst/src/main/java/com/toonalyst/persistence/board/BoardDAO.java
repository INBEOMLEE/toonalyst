package com.toonalyst.persistence.board;

import java.util.List;

import com.toonalyst.domain.board.BoardDTO;

public interface BoardDAO {
	
	public int register(BoardDTO bDto);

	public List<BoardDTO> listAll(String search_option, String keyword, int start, int end);

	public BoardDTO read(int bno);

	public int countArticle(String search_option, String keyword);

	public void delete(int bno);

	public void update(BoardDTO bDto);

	public void increaseViewCnt(int bno);
}
