package com.company.dao;

import java.util.List;

import com.company.dto.Product;
import com.company.vo.ProductVO;

public interface ProductDAO {
	int getTotalCount();
	List<ProductVO> getProductList();
	List<ProductVO> getProductCateList(String cate);
	ProductVO getProduct(int pno);
	void insProduct(Product product);
	void upProduct(Product product);
	void delProduct(int pno);
}
