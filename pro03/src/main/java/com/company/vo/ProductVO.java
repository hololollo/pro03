package com.company.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductVO {
	private int pno;
	private String cate;
	private String pname;
	private String com;
	private String img;
	private String img2;
	private String img3;
	private int iprice; //in
	private int oprice; // out
	private int amount;
	private int price;
}
