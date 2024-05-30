package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.SalesDAO;
import com.company.dto.Sales;

@Service
public class SalesServiceImpl implements SalesService {
	@Autowired
	private SalesDAO salesDAO;

	@Override
	public int getTotalCount() {
		return salesDAO.getTotalCount();
	}

	@Override
	public List<Sales> getAdSalesList() {
		return salesDAO.getAdSalesList();
	}

	@Override
	public List<Sales> getAdStSalesList(String st) {
		return salesDAO.getAdStSalesList(st);
	}


	@Override
	public List<Sales> getAdDelstSalesList(String delStatus) {
		return salesDAO.getAdDelstSalesList(delStatus);
	}

	@Override
	public List<Sales> getPnoSalesList(int pno) {
		return salesDAO.getPnoSalesList(pno);
	}

	@Override
	public List<Sales> getSalesList(String id) {
		return salesDAO.getSalesList(id);
	}

	@Override
	public Sales getSales(int sno) {
		return salesDAO.getSales(sno);
	}

	@Override
	public void insSales(Sales sales) {
		salesDAO.insSales(sales);
	}

	@Override
	public void upSales(Sales sales) {
		salesDAO.upSales(sales);
	}

	@Override
	public void upDelivery(Sales sales) {
		salesDAO.upDelivery(sales);
	}

	@Override
	public void completeDelivery(Sales sales) {
		salesDAO.completeDelivery(sales);
	}

	@Override
	public void delSales(int sno) {
		salesDAO.delSales(sno);
	}

}