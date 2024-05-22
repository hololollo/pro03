package com.company.service;

import java.util.List;

import com.company.dto.Fileboard;

public interface FileboardService {
	public List<Fileboard> getFileboardList();
	public Fileboard getFileboard(int fno);
	public void upFileboard(Fileboard fileboard);
	public void delFileboard(int fno);
    public void changeInfo(Fileboard fileboard);
}
