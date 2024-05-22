package com.company.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.dto.Basket;

@Repository
public class BasketDAOImpl implements BasketDAO{
	@Autowired
	private SqlSession sqlSession;

	
	
	@Override
	public Basket getTotalCount(int bno) {
		return sqlSession.selectOne("basket.getTotalCount");
	}

	@Override
	public List<Basket> getBasketList() {
		return sqlSession.selectList("basket.getBasketList");
	}
	
	@Override
	public Basket getBasket(int bno) {
		return sqlSession.selectOne("basket.getBasket", bno);
	}
	
	@Override
	public void insBasket(int bno) {
		sqlSession.insert("basket.insBasket", bno);
	}
	
	@Override
	public void delBasket(int bno) {
		sqlSession.delete("basket.delBasket", bno);
	}

	@Override
	public void upBasket(int bno) {
		sqlSession.update("basket.upBasket", bno);
	}
	
}