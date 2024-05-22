package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.BasketDAO;
import com.company.dto.Basket;

@Service
public class BasketServiceImpl implements BasketService{
	@Autowired
	private BasketDAO basketDAO;

	
	@Override
	public Basket getTotalCount(int bno) {
		return basketDAO.getTotalCount(bno);
	}

	@Override
	public List<Basket> getBasketList() {
		return basketDAO.getBasketList();
	}

	@Override
	public Basket getBasket(int bno) {
		return basketDAO.getBasket(bno);
	}

	@Override
	public void insBasket(int bno) {
		basketDAO.insBasket(bno);
	}

	@Override
	public void delBasket(int bno) {
		basketDAO.delBasket(bno);
	}

	@Override
	public void upBasket(int bno) {
		basketDAO.upBasket(bno);
	}
	
	
}