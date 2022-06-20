package com.myspring.Onaju.host.goods.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("hostGoodsVO")
public class HostGoodsVO {
	
	private String hostInfo_name;
	private String h_sellerNum;
	private String h_accountNum;
	private int zipcode;
	private String roadAddress;
	private String numberAddress;
	private String restAddress;
	private String host_type;
	private String room_count;
	private String h_name;
	private int room_code;
	private int h_code;
	private String h_id;
	private String room_type;
	private String room_number;
	private String room_fee;
	private String able_checkIn;
	private String able_checkOut;
	private String room_status;
	private String title;
	private String min_number;
	private String max_number;
	private String bed_type;
	private String bed_count;
	private String bath_count;
	private String party_check;
	private String kitchen;
	private String wifi;
	private String parking;
	private String tv;
	private String refrigerator;
	private String hairdryer;
	private String washer;
	private String pet;
	private String pickup;
	private String dryer;
	private String elevator;
	private String barbecue;
	private String pool;
	private String aircon;
	private String heater;
	private String smoking;
	private String content;
	private Date creDate;
	private int roomImage_NO;
	private String room_imageName;
	private String room_imageType;
	private String longitude;
	private String latitude;
	private boolean like_state;
	private String like_id;
	private int viewPage = 1;
	private int startNO = 1; // 페이징 초기값(1번부터 불러오겠다)
	private int endNO = 10; //페이징 초기값(10번까지 불러오겠다)
	
	public HostGoodsVO() {
		System.out.println("HostGoodsVO 생성자 호출");
	}


	public String getHostInfo_name() {
		return hostInfo_name;
	}


	public String getLongitude() {
		return longitude;
	}


	public int getViewPage() {
		return viewPage;
	}


	public void setViewPage(int viewPage) {
		this.viewPage = viewPage;
	}


	public int getStartNO() {
		return startNO;
	}


	public void setStartNO(int startNO) {
		this.startNO = startNO;
	}


	public int getEndNO() {
		return endNO;
	}


	public void setEndNO(int endNO) {
		this.endNO = endNO;
	}


	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}


	public String getLatitude() {
		return latitude;
	}


	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}


	public void setHostInfo_name(String hostInfo_name) {
		this.hostInfo_name = hostInfo_name;
	}


	public String getH_sellerNum() {
		return h_sellerNum;
	}


	public void setH_sellerNum(String h_sellerNum) {
		this.h_sellerNum = h_sellerNum;
	}


	public String getH_accountNum() {
		return h_accountNum;
	}


	public String getH_name() {
		return h_name;
	}


	public void setH_name(String h_name) {
		this.h_name = h_name;
	}


	public void setH_accountNum(String h_accountNum) {
		this.h_accountNum = h_accountNum;
	}


	public int getZipcode() {
		return zipcode;
	}


	public String getLike_id() {
		return like_id;
	}


	public void setLike_id(String like_id) {
		this.like_id = like_id;
	}


	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}


	public String getRoadAddress() {
		return roadAddress;
	}


	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}


	public String getNumberAddress() {
		return numberAddress;
	}


	public void setNumberAddress(String numberAddress) {
		this.numberAddress = numberAddress;
	}


	public String getRestAddress() {
		return restAddress;
	}


	public void setRestAddress(String restAddress) {
		this.restAddress = restAddress;
	}


	public String getHost_type() {
		return host_type;
	}


	public void setHost_type(String host_type) {
		this.host_type = host_type;
	}


	public String getRoom_count() {
		return room_count;
	}


	public void setRoom_count(String room_count) {
		this.room_count = room_count;
	}


	public int getRoom_code() {
		return room_code;
	}


	public void setRoom_code(int room_code) {
		this.room_code = room_code;
	}


	public int getH_code() {
		return h_code;
	}


	public void setH_code(int h_code) {
		this.h_code = h_code;
	}


	public String getH_id() {
		return h_id;
	}


	public void setH_id(String h_id) {
		this.h_id = h_id;
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


	public boolean isLike_state() {
		return like_state;
	}


	public void setLike_state(boolean like_state) {
		this.like_state = like_state;
	}


	public String getAble_checkOut() {
		return able_checkOut;
	}


	public void setAble_checkOut(String able_checkOut) {
		this.able_checkOut = able_checkOut;
	}


	public String getRoom_status() {
		return room_status;
	}


	public void setRoom_status(String room_status) {
		this.room_status = room_status;
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


	public String getBed_type() {
		return bed_type;
	}


	public void setBed_type(String bed_type) {
		this.bed_type = bed_type;
	}


	public String getBed_count() {
		return bed_count;
	}


	public void setBed_count(String bed_count) {
		this.bed_count = bed_count;
	}


	public String getBath_count() {
		return bath_count;
	}


	public void setBath_count(String bath_count) {
		this.bath_count = bath_count;
	}


	public String getParty_check() {
		return party_check;
	}


	public void setParty_check(String party_check) {
		this.party_check = party_check;
	}


	public String getKitchen() {
		return kitchen;
	}


	public void setKitchen(String kitchen) {
		this.kitchen = kitchen;
	}


	public String getWifi() {
		return wifi;
	}


	public void setWifi(String wifi) {
		this.wifi = wifi;
	}


	public String getParking() {
		return parking;
	}


	public void setParking(String parking) {
		this.parking = parking;
	}


	public String getTv() {
		return tv;
	}


	public void setTv(String tv) {
		this.tv = tv;
	}


	public String getRefrigerator() {
		return refrigerator;
	}


	public void setRefrigerator(String refrigerator) {
		this.refrigerator = refrigerator;
	}


	public String getHairdryer() {
		return hairdryer;
	}


	public void setHairdryer(String hairdryer) {
		this.hairdryer = hairdryer;
	}


	public String getWasher() {
		return washer;
	}


	public void setWasher(String washer) {
		this.washer = washer;
	}


	public String getPet() {
		return pet;
	}


	public void setPet(String pet) {
		this.pet = pet;
	}


	public String getPickup() {
		return pickup;
	}


	public void setPickup(String pickup) {
		this.pickup = pickup;
	}


	public String getDryer() {
		return dryer;
	}


	public void setDryer(String dryer) {
		this.dryer = dryer;
	}


	public String getElevator() {
		return elevator;
	}


	public void setElevator(String elevator) {
		this.elevator = elevator;
	}


	public String getBarbecue() {
		return barbecue;
	}


	public void setBarbecue(String barbecue) {
		this.barbecue = barbecue;
	}


	public String getPool() {
		return pool;
	}


	public void setPool(String pool) {
		this.pool = pool;
	}


	public String getAircon() {
		return aircon;
	}


	public void setAircon(String aircon) {
		this.aircon = aircon;
	}


	public String getHeater() {
		return heater;
	}


	public void setHeater(String heater) {
		this.heater = heater;
	}


	public String getSmoking() {
		return smoking;
	}


	public void setSmoking(String smoking) {
		this.smoking = smoking;
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


	public String getRoom_imageType() {
		return room_imageType;
	}


	public void setRoom_imageType(String room_imageType) {
		this.room_imageType = room_imageType;
	}



}
