package com.company.service;

import java.util.List;

import com.company.dto.Sales;

public interface SalesService {
	public int getTotalCount(); // 총 거래수
	public List<Sales> getAdSalesList(); // 관리자 판매 전체 목록
	public List<Sales> getAdStSalesList(String st); // 관리자 판매 진행 상태별 목록
	public List<Sales> getAdDelstSalesList(String delStatus);	//관리자 배송 상태별 목록
	public List<Sales> getPnoSalesList(int pno);	//상품별 판매 목록
	public List<Sales> getSalesList(String id); // 고객별 구매 목록
	public Sales getSales(int sno); // 해당 구매 건별 상세 내역
	public void insSales(Sales sales);	//구매(판매) 처리
	public void upSales(Sales sales);	//배송지 변경
	public void upDelivery(Sales sales);	//배송 처리
	public void completeDelivery(Sales sales);	//거래 완료
	public void delSales(int sno);	//결제 취소
}
