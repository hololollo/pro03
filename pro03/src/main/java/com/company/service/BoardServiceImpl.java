package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.company.dao.BoardDAO;
import com.company.dto.Board;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public int getTotalCount() {
		return boardDAO.getTotalCount();
	}

	@Override
	public List<Board> getBoardList() {
		return boardDAO.getBoardList();
	}

	@Override
	public Board getBoard(int bno) {
		boardDAO.vcntCount(bno);
		return boardDAO.getBoard(bno);
	}
	
	@Override
	public Board selBoard(int bno) {
		return boardDAO.getBoard(bno);
	}

	@Override
	public void insBoard(Board board) {
		boardDAO.insBoard(board);		
	}

	@Override
	public void upBoard(Board board) {
		boardDAO.upBoard(board);
	}

	@Override
	public void countUpCnt(int bno) {
		boardDAO.vcntCount(bno);		
	}

	@Override
	public void delBoard(int bno) {
		boardDAO.delBoard(bno);
	}
}
