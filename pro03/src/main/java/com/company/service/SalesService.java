package com.company.service;

import java.util.List;

import com.company.dto.Sales;

public interface SalesService {
	public Sales getTotalCount(int sno);
	public List<Sales> getSalesList();
	public Sales getSales(int sno);
	public void insSales(int sno);
	public void delSales(int sno);
}
