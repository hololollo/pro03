package com.company.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.dto.Inventory;

@Repository
public class InventoryDAOImpl implements InventoryDAO{
	@Autowired
	private SqlSession sqlSession;

	
	@Override
	public Inventory getTotalCount() {
		return sqlSession.selectOne("inventory.getTotalCount");
	}

	@Override
	public List<Inventory> getInventoryList() {
		return sqlSession.selectList("inventory.getInventoryList");
	}

	@Override
	public Inventory getInventory(int ino) {
		return sqlSession.selectOne("inventory.getInventory", ino);
	}

	@Override
	public void insInventory(Inventory inventory) {
		sqlSession.insert("inventory.insInventory", inventory);
	}

	@Override
	public void delInventory(int ino) {
		sqlSession.delete("inventory.delInventory", ino);
	}

}
