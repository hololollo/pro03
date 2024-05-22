package com.company.service;

import java.util.List;

import com.company.dto.Qna;

public interface QnaService {
	public Qna getTotalCount();
	public List<Qna> getQnaList();
	public Qna getQna(int no);
	public void insQna(Qna qna);
	public void upQna(Qna qna);
	public void delQna(int no);
}
