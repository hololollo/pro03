package com.company.service;

import java.util.List;

import com.company.dto.Board;

public interface BoardService {
	public int getTotalCount();
	public List<Board> getBoardList();
	public Board getBoard(int bno);
	public Board selBoard(int bno);	
	public void insBoard(Board board);
	public void upBoard(Board board);
	public void countUpCnt(int bno);	
	public void delBoard(int bno);
}
