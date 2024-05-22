package com.company.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Sales {
		private int sno;
		private int pno;
		private int amount;
		private int tot;
		private String id;
		private String paymethod;
		private String paynum;
		private int dno;
		private String addr;
		private String tel;
		private Member member;
		private Product product;
}