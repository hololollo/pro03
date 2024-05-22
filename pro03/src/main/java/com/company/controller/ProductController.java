package com.company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.dto.Product;
import com.company.service.ProductService;

@Controller
@RequestMapping("/product/")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@GetMapping("productList.do")
	public String getProductList(Model model) {
		List<Product> productList = productService.getProductList();
		model.addAttribute("productList", productList);
		return "product/productList";
	}
}
