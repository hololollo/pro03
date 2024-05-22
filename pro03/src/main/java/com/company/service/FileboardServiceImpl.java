package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.Fileboard;

@Service
public class FileboardServiceImpl implements FileboardService{
	@Autowired
	private FileboardService fileboardService;

	@Override
	public List<Fileboard> getFileboardList() {
		return fileboardService.getFileboardList();
	}

	@Override
	public Fileboard getFileboard(int fno) {
		return fileboardService.getFileboard(fno);
	}

	@Override
	public void upFileboard(Fileboard fileboard) {
		fileboardService.upFileboard(fileboard);
	}

	@Override
	public void delFileboard(int fno) {
		fileboardService.delFileboard(fno);
	}

	@Override
	public void changeInfo(Fileboard fileboard) {
		fileboardService.changeInfo(fileboard);
	}
	
	
}
