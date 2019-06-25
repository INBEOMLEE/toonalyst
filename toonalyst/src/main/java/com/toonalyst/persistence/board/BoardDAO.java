package com.toonalyst.persistence.board;

import java.util.List;
import java.util.Map;

import com.toonalyst.domain.board.BoardDTO;

public interface BoardDAO {
	
	public int register(BoardDTO bDto);

	public List<BoardDTO> listAll(String sort_option, String search_option, String keyword, int start, int end, int bcategory);

	public BoardDTO read(int bno);

	public int countArticle(String search_option, String keyword, int bcategory);

	public void delete(int bno);

	public void update(BoardDTO bDto);

	public void increaseViewCnt(int bno);

	public int goodCheck(Map<String, Object> map);

	public void goodPlus(Map<String, Object> map);
	
	public void goodMinus(Map<String, Object> map);

	public int goodCntView(int bno);

	public void goodCntUpdate(int bgoodcnt, int bno);

	public void commentCntUpdate(int bno, int code);

	public int selectBoardCnt(String id);
	
}
