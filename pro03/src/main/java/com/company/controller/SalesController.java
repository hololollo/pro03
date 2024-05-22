package com.company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.dto.Sales;
import com.company.service.SalesService;

@Controller
@RequestMapping("/sales/")
public class SalesController {
	@Autowired
	private SalesService salesService;
	
	@GetMapping("salesList.do")
	public String getSalesList(Model model) {
		List<Sales> salesList = salesService.getSalesList();
		model.addAttribute("salesList", salesList);
		return "sales/salesList";
	}
}
