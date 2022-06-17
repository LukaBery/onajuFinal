package com.myspring.Onaju.host.reservation.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("reservationVO")
public class ReservationVO {
	private String order_code;
	private String u_id;
	private String h_code;
	private String h_id;
	private String room_code;
	
	private String room_number;
	private String title;
	private String hostInfo_name;
	private String order_name;
	private String order_phone;
	private String order_email1;
	private String order_email2;
	private Date checkIn_date;
	private Date checkOut_date;
	private int people_count;
	private int room_fee;
	private String pay_type;
	private float discount;
	private int total;
	private String reservation_state;
	
	public ReservationVO() {
		System.out.println("생성자 메서드 호출");
	}

	public String getOrder_code() {
		return order_code;
	}

	public void setOrder_code(String order_code) {
		this.order_code = order_code;
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

	public String getH_id() {
		return h_id;
	}

	public void setH_id(String h_id) {
		this.h_id = h_id;
	}

	public String getRoom_code() {
		return room_code;
	}

	public void setRoom_code(String room_code) {
		this.room_code = room_code;
	}

	public String getRoom_number() {
		return room_number;
	}

	public void setRoom_number(String room_number) {
		this.room_number = room_number;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getHostInfo_name() {
		return hostInfo_name;
	}

	public void setHostInfo_name(String hostInfo_name) {
		this.hostInfo_name = hostInfo_name;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public String getOrder_phone() {
		return order_phone;
	}

	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}

	public String getOrder_email1() {
		return order_email1;
	}

	public void setOrder_email1(String order_email1) {
		this.order_email1 = order_email1;
	}

	public String getOrder_email2() {
		return order_email2;
	}

	public void setOrder_email2(String order_email2) {
		this.order_email2 = order_email2;
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

	public String getPay_type() {
		return pay_type;
	}

	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
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

	public String getReservation_state() {
		return reservation_state;
	}

	public void setReservation_state(String reservation_state) {
		this.reservation_state = reservation_state;
	}
	
	
}
