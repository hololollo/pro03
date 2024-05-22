package com.company.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Inventory {
	private int ino;
	private int pno;
	private int iprice;
	private int oprice;
	private int amount;
	private String remark;
	private Product product;
}