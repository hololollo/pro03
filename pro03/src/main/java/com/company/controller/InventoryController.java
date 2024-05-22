package com.company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.dto.Inventory;
import com.company.service.InventoryService;

@Controller
@RequestMapping("/inventory/")
public class InventoryController {
	@Autowired
	private InventoryService inventoryService;
	
	@GetMapping("inventoryList.do")
	public String getInventoryList(Model model) {
		List<Inventory> inventoryList = inventoryService.getInventoryList();
		model.addAttribute("inventoryList", inventoryList);
		return "inventory/inventoryList";
	}
}