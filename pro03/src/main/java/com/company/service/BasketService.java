package com.company.service;

import java.util.List;

import com.company.dto.Basket;
import com.company.dto.Inventory;

public interface BasketService {
	public Basket getTotalCount(int bno);
	public List<Basket> getBasketList();
	public Basket getBasket(int bno);
	public void insBasket(int bno);
	public void delBasket(int bno);
	public void upBasket(int bno);
}
