package com.myspring.Onaju.host.money.vo;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component("hostMoneyVO")
public class HostMoneyVO {
	private int salesNO;
	private String h_id;
	private String h_code;
	private String room_code;
	private String  order_code;
	private int  sale_amount;
	private int  refund_amount;
	private Date salesDate;
	
	private int calculateNO;
	private int calculate_amount;
	private Date calculateDate;
	
	public HostMoneyVO() {
		System.out.println("HostMoneyVO생성자 메서드 호출");
	}

	public int getSalesNO() {
		return salesNO;
	}

	public void setSalesNO(int salesNO) {
		this.salesNO = salesNO;
	}

	public String getH_id() {
		return h_id;
	}

	public void setH_id(String h_id) {
		this.h_id = h_id;
	}

	public String getH_code() {
		return h_code;
	}

	public void setH_code(String h_code) {
		this.h_code = h_code;
	}

	public String getRoom_code() {
		return room_code;
	}

	public void setRoom_code(String room_code) {
		this.room_code = room_code;
	}

	public String getOrder_code() {
		return order_code;
	}

	public void setOrder_code(String order_code) {
		this.order_code = order_code;
	}

	public int getSale_amount() {
		return sale_amount;
	}

	public void setSale_amount(int sale_amount) {
		this.sale_amount = sale_amount;
	}

	public int getRefund_amount() {
		return refund_amount;
	}

	public void setRefund_amount(int refund_amount) {
		this.refund_amount = refund_amount;
	}

	public Date getSalesDate() {
		return salesDate;
	}

	public void setSalesDate(Date salesDate) {
		this.salesDate = salesDate;
	}

	public int getCalculateNO() {
		return calculateNO;
	}

	public void setCalculateNO(int calculateNO) {
		this.calculateNO = calculateNO;
	}

	public int getCalculate_amount() {
		return calculate_amount;
	}

	public void setCalculate_amount(int calculate_amount) {
		this.calculate_amount = calculate_amount;
	}

	public Date getCalculateDate() {
		return calculateDate;
	}

	public void setCalculateDate(Date calculateDate) {
		this.calculateDate = calculateDate;
	}
	
	
}
