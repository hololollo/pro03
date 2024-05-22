package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.Sales;

@Service
public class SalesServiceImpl implements SalesService {
	@Autowired
	private SalesService salesService;
	
	

	@Override
	public Sales getTotalCount(int sno) {
		return salesService.getTotalCount(sno);
	}

	@Override
	public List<Sales> getSalesList() {
		return salesService.getSalesList();
	}

	@Override
	public Sales getSales(int sno) {
		return salesService.getSales(sno);
	}

	@Override
	public void insSales(int sno) {
		salesService.insSales(sno);
	}

	@Override
	public void delSales(int sno) {
		salesService.delSales(sno);
	}
	
	
}
