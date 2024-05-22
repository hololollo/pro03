package com.company.service;

import java.util.List;

import com.company.dto.Product;

public interface ProductService {
	public List<Product> getProductList();
	public Product getProduct(int pno);
	public void insProduct(Product product);
	public void delProduct(int pno);
}
