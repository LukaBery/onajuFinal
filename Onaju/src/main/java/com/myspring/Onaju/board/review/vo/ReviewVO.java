package com.myspring.Onaju.board.review.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component("reviewVO")
public class ReviewVO {

	@DateTimeFormat(pattern="yyyy/MM/dd")
	private int review_num;
	private String u_id;
	private int order_code;
	private int room_code;
	private String review_star;
	private String review_content;
	private Date creDate;
	private String del_yn;
	private String room_imageName;
	private String title;
	private Date checkIn_date;
	private Date checkOut_date;
	private String u_name;
	private String u_imageName;
	private String pageNum;
	
	
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getOrder_code() {
		return order_code;
	}
	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}
	public int getRoom_code() {
		return room_code;
	}
	public void setRoom_code(int room_code) {
		this.room_code = room_code;
	}
	public String getReview_star() {
		return review_star;
	}
	public void setReview_star(String review_star) {
		this.review_star = review_star;
	}
	public Date getCreDate() {
		return creDate;
	}
	
	public String getReview_content() {
		return review_content;
	}
	
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public void setCreDate(Date creDate) {
		this.creDate = creDate;
	}
	public String getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
	}
	public String getRoom_imageName() {
		return room_imageName;
	}
	public void setRoom_imageName(String room_imageName) {
		this.room_imageName = room_imageName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_imageName() {
		return u_imageName;
	}
	public void setU_imageName(String u_imageName) {
		this.u_imageName = u_imageName;
	}
	public String getPage_num() {
		return pageNum;
	}
	public void setPage_num(String pageNum) {
		this.pageNum = pageNum;
	}
	
}
