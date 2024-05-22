package com.company.dao;

import java.util.List;

import com.company.dto.Inventory;

public interface InventoryDAO {
	public Inventory getTotalCount();
	public List<Inventory> getInventoryList();
	public Inventory getInventory(int ino);
	public void insInventory(Inventory inventory);
	public void delInventory(int ino);
}
