package com.company.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Member {
		private String id;  
		private String pw; 
		private String name;  
		private String email; 
		private String tel;  
		private String addr; 
		private String postcode; 
}