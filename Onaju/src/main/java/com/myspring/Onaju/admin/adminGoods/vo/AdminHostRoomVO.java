package com.myspring.Onaju.admin.adminGoods.vo;

import org.springframework.stereotype.Component;

@Component("adminHostRoomVO")
public class AdminHostRoomVO {
	private String h_id; 				// 호스트 아이디/
	private String h_name;				// 호스트 이름/
	private String h_phone;				// 호스트 전화번호/
	private String h_email1;			// 호스트 이메일1/
	private String h_email2;			// 호스트 이메일2/
	private String deputy_name;			// 호스트 대리인 이름/
	private String deputy_phone;		// 호스트 대리인 전화번호/
	private String deputy_birth; 		// 호스트 대리인 생년월일/
	private String deputy_department;	// 호스트 대리인 관계/
	
	
	private String hostInfo_name;   	// 호스트 사업장명/
	private String h_code; 				// 호스트 사업장 관리 번호(사이트에서 부여한 관리번호)
	private String room_code; 			// 호스트 사업장 룸 관리 번호
	private String h_sellerNum; 		// 호스트 사업장 사업자등록번호(나라에서 관리하는 번호)
	private String h_accountNum; 		// 호스트 사업장 계좌번호
	private String zipcode; 			// 호스트 사업장 주소(우편번호)
	private String roadAddress; 		// 호스트 사업장 주소(도로명 주소)
	private String numberAddress; 		// 호스트 사업장 주소(지번 주소)
	private String restAddress; 		// 호스트 사업장 주소(상세 주소)
	private String host_type; 			// 호스트 사업장 업종 타입

	
	private String room_type; 			// 호스트 사업장 룸 타입(예: 디럭스)
	private String room_number; 		// 호스트 사업장 룸 호실
	private String room_fee; 			// 호스트 사업장 룸 값
	private String able_checkIn; 		// 호스트 사업장 룸 체크인 시간
	private String able_checkOut; 		// 호스트 사업장 룸 체크아웃 시간
	private String title; 				// 호스트 사업장 룸 소개 제목
	private String content; 			// 호스트 사업장 룸 소개글 
	private String room_status; 		// 호스트 사업장 룸 상태
	private String min_number; 			// 호스트 사업장 룸 최소 수용인원
	private String max_number; 			// 호스트 사업장 룸 최대 수용인원
	private String bed_type; 			// 호스트 사업장 룸 침대 타입
	private String bed_count; 			// 호스트 사업장 룸 침대 개수
	private String bath_count; 			// 호스트 사업장 룸 화장실 개수
	private String party_check; 		// 호스트 사업장 룸 파티 가능 여부
	private String kitchen; 			// 호스트 사업장 룸 부엌 여부
	private String wifi; 				// 호스트 사업장 룸 와이파이 여부
	private String parking; 			// 호스트 사업장 룸 주차 여부
	private String tv; 					// 호스트 사업장 룸 티비 여부
	private String refrigerator;		// 호스트 사업장 룸 냉장고 여부
	private String hairdryer; 			// 호스트 사업장 룸 헤어드라이기 여부
	private String washer; 				// 호스트 사업장 룸 샤워실 여부
	private String pet; 				// 호스트 사업장 룸 애완동물 가능 여부
	private String pickup; 				// 호스트 사업장 룸 픽업 서비스 여부
	private String dryer; 				// 호스트 사업장 룸 옷 드라이어 여부
	private String elevator; 			// 호스트 사업장 엘리베티어 여부
	private String barbecue; 			// 호스트 사업장 바베큐 여부
	private String pool; 				// 호스트 사업장 수영장 여부
	private String aircon; 				// 호스트 사업장 룸 에어컨 여부
	private String heater; 				// 호스트 사업장 룸 히터 여부
	private String smoking; 			// 호스트 사업장 룸 흡연 가능 여부
	private String creDate; 			// 호스트 사업장 룸 등록 날짜
	private String del_yn; 				// 호스트 사업장 룸 삭제 여부
	
	
	
	private int viewPage = 1; 			// 페이징 초기값(없으면 1)
	private int startNO = 1; 			// 페이징 초기값(1번부터 불러오겠다)
	private int endNO = 10; 			// 페이징 초기값(10번까지 불러오겠다)
	
	
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
	public int getViewPage() {
		return viewPage;
	}
	public void setViewPage(int viewPage) {
		this.viewPage = viewPage;
	}
	
	
	public String getH_id() {
		return h_id;
	}
	public void setH_id(String h_id) {
		this.h_id = h_id;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getH_phone() {
		return h_phone;
	}
	public void setH_phone(String h_phone) {
		this.h_phone = h_phone;
	}
	public String getH_email1() {
		return h_email1;
	}
	public void setH_email1(String h_email1) {
		this.h_email1 = h_email1;
	}
	public String getH_email2() {
		return h_email2;
	}
	public void setH_email2(String h_email2) {
		this.h_email2 = h_email2;
	}
	public String getDeputy_name() {
		return deputy_name;
	}
	public void setDeputy_name(String deputy_name) {
		this.deputy_name = deputy_name;
	}
	public String getDeputy_phone() {
		return deputy_phone;
	}
	public void setDeputy_phone(String deputy_phone) {
		this.deputy_phone = deputy_phone;
	}
	public String getDeputy_birth() {
		return deputy_birth;
	}
	public void setDeputy_birth(String deputy_birth) {
		this.deputy_birth = deputy_birth;
	}
	public String getDeputy_department() {
		return deputy_department;
	}
	public void setDeputy_department(String deputy_department) {
		this.deputy_department = deputy_department;
	}
	public String getHostInfo_name() {
		return hostInfo_name;
	}
	public void setHostInfo_name(String hostInfo_name) {
		this.hostInfo_name = hostInfo_name;
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
	public String getH_sellerNum() {
		return h_sellerNum;
	}
	public void setH_sellerNum(String h_sellerNum) {
		this.h_sellerNum = h_sellerNum;
	}
	public String getH_accountNum() {
		return h_accountNum;
	}
	public void setH_accountNum(String h_accountNum) {
		this.h_accountNum = h_accountNum;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRoom_status() {
		return room_status;
	}
	public void setRoom_status(String room_status) {
		this.room_status = room_status;
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
	public String getCreDate() {
		return creDate;
	}
	public void setCreDate(String creDate) {
		this.creDate = creDate;
	}
	public String getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
	}
	
	
}
