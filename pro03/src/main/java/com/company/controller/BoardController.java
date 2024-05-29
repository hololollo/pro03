package com.company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.dto.Board;
import com.company.service.BoardService;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("boardList.do")
	public String getBoardList(Model model) {
		List<Board> boardList = boardService.getBoardList();
		model.addAttribute("boardList", boardList);
		return "board/boardList";
	}
	@RequestMapping("getBoard.do")
	public String getBoard(@RequestParam("bno") int bno, Model model) {
		model.addAttribute("board", boardService.getBoard(bno));
		return "board/getBoard";
	}
	@GetMapping("insBoard.do")
	public String insBoard(Board board, Model model) {
		return "board/insBoard";
	}
	@PostMapping("insBoardPro.do")
	public String insBoardPro(Board board, Model model) {
		boardService.insBoard(board);
		return "redirect:boardList.do";
	}
}
