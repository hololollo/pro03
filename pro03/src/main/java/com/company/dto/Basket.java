package com.company.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Basket {
		private int bno;
		private String id;
		private int pno;
		private int amount;
		private String remark;
		private Member member;
		private Product product;

}