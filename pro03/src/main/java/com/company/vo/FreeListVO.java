package com.company.vo;

import java.util.List;

import com.company.dto.Free;
import com.company.util.PagingBean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FreeListVO {
	private List<Free> list;
	private PagingBean pagingBean;
}