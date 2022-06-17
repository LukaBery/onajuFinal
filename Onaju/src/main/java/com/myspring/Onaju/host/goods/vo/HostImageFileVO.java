package com.myspring.Onaju.host.goods.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("hostImageFileVO")
public class HostImageFileVO {
	private int roomImage_NO;
	private int room_code;
	private String room_imageName;
	private String room_imageType;
	private int h_code;
	private Date creDate;
	
	
	public HostImageFileVO() {
		System.out.println("HostImageFileVO 생성자 호출");	
	}


	public int getRoomImage_NO() {
		return roomImage_NO;
	}


	public void setRoomImage_NO(int roomImage_NO) {
		this.roomImage_NO = roomImage_NO;
	}


	public int getRoom_code() {
		return room_code;
	}


	public void setRoom_code(int room_code) {
		this.room_code = room_code;
	}


	public String getRoom_imageName() {
		return room_imageName;
	}


	public void setRoom_imageName(String room_imageName) {
		this.room_imageName = room_imageName;
	}


	public String getRoom_imageType() {
		return room_imageType;
	}


	public void setRoom_imageType(String room_imageType) {
		this.room_imageType = room_imageType;
	}



	public int getH_code() {
		return h_code;
	}


	public void setH_code(int h_code) {
		this.h_code = h_code;
	}


	public Date getCreDate() {
		return creDate;
	}


	public void setCreDate(Date creDate) {
		this.creDate = creDate;
	}
	
}
