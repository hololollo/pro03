package com.company.dao;

import java.util.List;

import com.company.dto.Sales;

public interface SalesDAO {
	public Sales getTotalCount();
	public List<Sales> getSalesList();
	public Sales getSales(int sno);
	public void insSales(int sno);
	public void delSales(int sno);
}
