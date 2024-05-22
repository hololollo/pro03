package com.company.dao;

import java.util.List;

import com.company.dto.Fileboard;

public interface FileboardDAO {
	public Fileboard getTotalCount();
	public List<Fileboard> getFileboardList();
	public Fileboard getFileboard(int bno);
	public void upFileboard(Fileboard fileboard);
	public void delFileboard(int bno);
    public void changeInfo(Fileboard fileboard);
}
