package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.Inventory;

@Service
public class InventoryServiceImpl implements InventoryService{
	@Autowired
	private InventoryService inventoryService;

	@Override
	public Inventory getTotalCount() {
		return inventoryService.getTotalCount();
	}

	@Override
	public List<Inventory> getInventoryList() {
		return inventoryService.getInventoryList();
	}

	@Override
	public Inventory getInventory(int ino) {
		return inventoryService.getInventory(ino);
	}

	@Override
	public void insInventory(Inventory inventory) {
		inventoryService.insInventory(inventory);
	}

	@Override
	public void delInventory(int ino) {
		inventoryService.delInventory(ino);
	}
	
	
}