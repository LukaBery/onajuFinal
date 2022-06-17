package com.myspring.Onaju.host.community.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("hostCommunityVO")
public class HostCommunityVO {
	private int cmnNum;
	private String bigTitle;
	private String smallTitle;
	private String cmn_image;
	private String content;
	private Date creDate;
	private String h_name;
	private String h_id;
	private String h_imageName;
	
	private int h_code;
	private String hostInfo_name;
	private String roadAddress;
	private String host_type;
	
	private int room_code;
	private String room_type;
	private String room_number;
	private String room_fee;
	private String able_checkIn;
	private String able_checkOut;
	private String title;
	private String min_number;
	private String max_number;
	
	private int roomImage_NO;
	private String room_imageName;
	private String hit;

	
	public HostCommunityVO() {
		System.out.println("HostCommunityVO생성자 메서드 호출");
	}

	public int getCmnNum() {
		return cmnNum;
	}

	public void setCmnNum(int cmnNum) {
		this.cmnNum = cmnNum;
	}

	public String getBigTitle() {
		return bigTitle;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public void setBigTitle(String bigTitle) {
		this.bigTitle = bigTitle;
	}

	public String getSmallTitle() {
		return smallTitle;
	}

	public void setSmallTitle(String smallTitle) {
		this.smallTitle = smallTitle;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getCmn_image() {
		return cmn_image;
	}

	public void setCmn_image(String cmn_image) {
		this.cmn_image = cmn_image;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getCreDate() {
		return creDate;
	}

	public void setCreDate(Date creDate) {
		this.creDate = creDate;
	}

	public String getH_id() {
		return h_id;
	}

	public void setH_id(String h_id) {
		this.h_id = h_id;
	}

	public String getH_imageName() {
		return h_imageName;
	}

	public void setH_imageName(String h_imageName) {
		this.h_imageName = h_imageName;
	}

	public int getH_code() {
		return h_code;
	}

	public void setH_code(int h_code) {
		this.h_code = h_code;
	}

	public String getHostInfo_name() {
		return hostInfo_name;
	}

	public void setHostInfo_name(String hostInfo_name) {
		this.hostInfo_name = hostInfo_name;
	}

	public String getRoadAddress() {
		return roadAddress;
	}

	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}

	public String getHost_type() {
		return host_type;
	}

	public void setHost_type(String host_type) {
		this.host_type = host_type;
	}

	public int getRoom_code() {
		return room_code;
	}

	public void setRoom_code(int room_code) {
		this.room_code = room_code;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public String getRoom_number() {
		return room_number;
	}

	public void setRoom_number(String room_number) {
		this.room_number = room_number;
	}

	public String getRoom_fee() {
		return room_fee;
	}

	public void setRoom_fee(String room_fee) {
		this.room_fee = room_fee;
	}

	public String getAble_checkIn() {
		return able_checkIn;
	}

	public void setAble_checkIn(String able_checkIn) {
		this.able_checkIn = able_checkIn;
	}

	public String getAble_checkOut() {
		return able_checkOut;
	}

	public void setAble_checkOut(String able_checkOut) {
		this.able_checkOut = able_checkOut;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMin_number() {
		return min_number;
	}

	public void setMin_number(String min_number) {
		this.min_number = min_number;
	}

	public String getMax_number() {
		return max_number;
	}

	public void setMax_number(String max_number) {
		this.max_number = max_number;
	}

	public int getRoomImage_NO() {
		return roomImage_NO;
	}

	public void setRoomImage_NO(int roomImage_NO) {
		this.roomImage_NO = roomImage_NO;
	}

	public String getRoom_imageName() {
		return room_imageName;
	}

	public void setRoom_imageName(String room_imageName) {
		this.room_imageName = room_imageName;
	}
	
	
}
