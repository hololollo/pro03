package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.FreeDAO;
import com.company.dto.Free;

@Service
public class FreeServiceImpl implements FreeService {
	@Autowired
	private FreeDAO freeDAO;

	@Override
	public Free getTotalCount() {
		return freeDAO.getTotalCount();
	}

	@Override
	public List<Free> getFreeList() {
		return freeDAO.getFreeList();
	}

	@Override
	public Free getFree(int no) {
		return freeDAO.getFree(no);
	}

	@Override
	public void insFree(Free free) {
		freeDAO.insFree(free);
	}

	@Override
	public void upFree(Free free) {
		freeDAO.upFree(free);
	}

	@Override
	public void delFree(int no) {
		freeDAO.delFree(no);
	}
	
	
}