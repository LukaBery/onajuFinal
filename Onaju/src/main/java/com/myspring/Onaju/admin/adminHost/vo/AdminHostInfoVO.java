package com.myspring.Onaju.admin.adminHost.vo;

import org.springframework.stereotype.Component;

@Component("adminHostInfoVO")
public class AdminHostInfoVO {
	private int h_code;
	private String h_id;
	private String h_name;
	private String h_birth_y;
	private String h_birth_m;
	private String h_birth_d;
	private String hostInfo_name;
	private String h_sellerNum;
	private String h_accountNum;
	private String zipcode;
	private String roadAddress;
	private String numberAddress;
	private String restAddress;
	private String host_type;
	private String room_count;
	private String creDate;
	private String del_yn;
	private String h_gender;
	
	private String h_email1;
	private String h_email2;
	private String h_phone;
	private String deputy_name;
	private String deputy_phone;
	private String deputy_department;
	private String deputy_birth;

	private int viewPage = 1;
	private int startNO = 1;
	private int endNO = 10;
	
	
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

	
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getDel_yn() {
		return del_yn;
	}

	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
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

	public String getHostInfo_name() {
		return hostInfo_name;
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

	public String getRoom_count() {
		return room_count;
	}

	public void setRoom_count(String room_count) {
		this.room_count = room_count;
	}

	public String getCreDate() {
		return creDate;
	}

	public void setCreDate(String creDate) {
		this.creDate = creDate;
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
	public String getH_phone() {
		return h_phone;
	}
	public void setH_phone(String h_phone) {
		this.h_phone = h_phone;
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
	public String getDeputy_department() {
		return deputy_department;
	}
	public void setDeputy_department(String deputy_department) {
		this.deputy_department = deputy_department;
	}
	public String getDeputy_birth() {
		return deputy_birth;
	}
	public void setDeputy_birth(String deputy_birth) {
		this.deputy_birth = deputy_birth;
	}
	public String getH_birth_y() {
		return h_birth_y;
	}
	public void setH_birth_y(String h_birth_y) {
		this.h_birth_y = h_birth_y;
	}
	public String getH_birth_m() {
		return h_birth_m;
	}
	public void setH_birth_m(String h_birth_m) {
		this.h_birth_m = h_birth_m;
	}
	public String getH_birth_d() {
		return h_birth_d;
	}
	public void setH_birth_d(String h_birth_d) {
		this.h_birth_d = h_birth_d;
	}
	public String getH_gender() {
		return h_gender;
	}
	public void setH_gender(String h_gender) {
		this.h_gender = h_gender;
	}
	
	
}
