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
	public Sales getTotalCount() {
		return sqlSession.selectOne("sales.getTotalCount");
	}

	@Override
	public List<Sales> getSalesList() {
		return sqlSession.selectList("sales.getSalesList");
	}

	@Override
	public Sales getSales(int sno) {
		return sqlSession.selectOne("sales.getSales", sno);
	}

	@Override
	public void insSales(int sno) {
		sqlSession.insert("sales.insSales", sno);
	}

	@Override
	public void delSales(int sno) {
		sqlSession.delete("sales.delSales", sno);
	}
	
	
}
