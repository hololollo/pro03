package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.Product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductService productService;

	@Override
	public List<Product> getProductList() {
		return productService.getProductList();
	}

	@Override
	public Product getProduct(int pno) {
		return productService.getProduct(pno);
	}

	@Override
	public void insProduct(Product product) {
		productService.insProduct(product);
	}

	@Override
	public void delProduct(int pno) {
		productService.delProduct(pno);
	}
	
}
