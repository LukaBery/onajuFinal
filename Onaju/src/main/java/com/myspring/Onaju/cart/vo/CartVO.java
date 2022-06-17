package com.myspring.Onaju.cart.vo;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component("cartVO")
public class CartVO {
	private String cart_code;
	private String u_id;
	private String h_code;
	private String room_code;
	private Date checkIn_date;
	private Date checkOut_date;
	private int people_count;
	private int room_fee;
	private float  discount;
	private int total;
	private String h_name;
	private String title;
	private String room_imageName;
	public String getCart_code() {
		return cart_code;
	}
	public void setCart_code(String cart_code) {
		this.cart_code = cart_code;
	}
	public String getH_name() {
		return h_name;
	}
	public String getRoom_imageName() {
		return room_imageName;
	}
	public void setRoom_imageName(String room_imageName) {
		this.room_imageName = room_imageName;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
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
	public Date getCheckIn_date() {
		return checkIn_date;
	}
	public void setCheckIn_date(Date checkIn_date) {
		this.checkIn_date = checkIn_date;
	}
	public Date getCheckOut_date() {
		return checkOut_date;
	}
	public void setCheckOut_date(Date checkOut_date) {
		this.checkOut_date = checkOut_date;
	}
	public int getPeople_count() {
		return people_count;
	}
	public void setPeople_count(int people_count) {
		this.people_count = people_count;
	}
	public int getRoom_fee() {
		return room_fee;
	}
	public void setRoom_fee(int room_fee) {
		this.room_fee = room_fee;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}
