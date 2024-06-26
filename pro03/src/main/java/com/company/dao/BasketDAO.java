package com.company.dao;

import java.util.List;

import com.company.dto.Basket;

public interface BasketDAO {
	public Basket getTotalCount(int bno);
	public List<Basket> getBasketList();
	public Basket getBasket(int bno);
	public void insBasket(int bno);
	public void delBasket(int bno);
	public void upBasket(int bno);
}
