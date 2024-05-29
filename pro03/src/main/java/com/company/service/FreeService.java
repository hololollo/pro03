package com.company.service;

import java.util.List;

import com.company.dto.Free;

public interface FreeService {
	public int getTotalCount();
	public List<Free> getFreeList();
	public Free getFree(int no);
	public void insFree(Free free);
	public void upFree(Free free);
	public void hitCount(int no);
	public void delFree(int no);
}
