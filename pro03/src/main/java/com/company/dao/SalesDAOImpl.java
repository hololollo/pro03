package com.company.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.dto.Sales;

@Repository
public class SalesDAOImpl implements SalesDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getTotalCount() {
		return sqlSession.selectOne("sales.getTotalCount");
	}

	@Override
	public List<Sales> getAdSalesList() {
		return sqlSession.selectList("sales.getAdSalesList");
	}
	
	@Override
	public List<Sales> getAdStSalesList(String st) {
		return sqlSession.selectList("sales.getAdStSalesList", st);
	}
	
	@Override
	public List<Sales> getAdDelstSalesList(String delStatus) {
		return sqlSession.selectList("sales.getAdDelstSalesList", delStatus);
	}

	@Override
	public List<Sales> getPnoSalesList(int pno) {
		return sqlSession.selectList("sales.getPnoSalesList", pno);
	}

	@Override
	public List<Sales> getSalesList(String id) {
		return sqlSession.selectList("sales.getSalesList", id);
	}

	@Override
	public Sales getSales(int sno) {
		return sqlSession.selectOne("sales.getSales", sno);
	}

	@Override
	public void insSales(Sales sales) {
		sqlSession.insert("sales.insSales", sales);
	}

	@Override
	public void upSales(Sales sales) {
		sqlSession.update("sales.upSales", sales);		
	}

	@Override
	public void upDelivery(Sales sales) {
		sqlSession.update("sales.upDelivery", sales);		
	}

	@Override
	public void completeDelivery(Sales sales) {
		sqlSession.update("sales.completeDelivery", sales);		
	}

	@Override
	public void delSales(int sno) {
		sqlSession.delete("sales.delSales", sno);
	}

	
}

