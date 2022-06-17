package com.myspring.Onaju.member.vo;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component("memberVO")
public class MemberVO {
	
	private String u_id;
	private String u_pw;
	private String u_name;
	private String u_birth_y;
	private String u_birth_m;
	private String u_birth_d;
	private String u_gender;
	private String u_phone;
	private String u_email1;
	private String u_email2;
	private String zipcode;
	private String roadAddress;
	private String numberAddress;
	private String restAddress;
	

	private String u_point;
	private String u_grade;
	private String proposer;

	private String u_imageName;
	private String u_imageType;
	private String u_agree_1;
	private String u_agree_2;
	private String u_agree_3;
	private String u_service_01;
	private String u_service_02;
	private Date joinDate;
	private String salt;
	
	private int viewPage = 1;
	private int startNO = 1;
	private int endNO = 10;
	

	private String write_startDate;
	private String write_endDate;
	
	
	
	
	public String getWrite_startDate() {
		return write_startDate;
	}
	public void setWrite_startDate(String write_startDate) {
		this.write_startDate = write_startDate;
	}
	public String getWrite_endDate() {
		return write_endDate;
	}
	public void setWrite_endDate(String write_endDate) {
		this.write_endDate = write_endDate;
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
	
	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pw() {
		return u_pw;
	}

	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_birth_y() {
		return u_birth_y;
	}

	public void setU_birth_y(String u_birth_y) {
		this.u_birth_y = u_birth_y;
	}

	public String getU_birth_m() {
		return u_birth_m;
	}

	public void setU_birth_m(String u_birth_m) {
		this.u_birth_m = u_birth_m;
	}

	public String getU_birth_d() {
		return u_birth_d;
	}

	public void setU_birth_d(String u_birth_d) {
		this.u_birth_d = u_birth_d;
	}

	public String getU_gender() {
		return u_gender;
	}

	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public String getU_email1() {
		return u_email1;
	}

	public void setU_email1(String u_email1) {
		this.u_email1 = u_email1;
	}

	public String getU_email2() {
		return u_email2;
	}

	public void setU_email2(String u_email2) {
		this.u_email2 = u_email2;
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

	public String getU_point() {
		return u_point;
	}

	public void setU_point(String u_point) {
		this.u_point = u_point;
	}

	public String getU_grade() {
		return u_grade;
	}

	public void setU_grade(String u_grade) {
		this.u_grade = u_grade;
	}

	public String getProposer() {
		return proposer;
	}

	public void setProposer(String proposer) {
		this.proposer = proposer;
	}

	public String getU_imageName() {
		return u_imageName;
	}

	public void setU_imageName(String u_imageName) {
		this.u_imageName = u_imageName;
	}

	public String getU_imageType() {
		return u_imageType;
	}

	public void setU_imageType(String u_imageType) {
		this.u_imageType = u_imageType;
	}

	public String getU_agree_1() {
		return u_agree_1;
	}

	public void setU_agree_1(String u_agree_1) {
		this.u_agree_1 = u_agree_1;
	}

	public String getU_agree_2() {
		return u_agree_2;
	}

	public void setU_agree_2(String u_agree_2) {
		this.u_agree_2 = u_agree_2;
	}

	public String getU_agree_3() {
		return u_agree_3;
	}

	public void setU_agree_3(String u_agree_3) {
		this.u_agree_3 = u_agree_3;
	}

	public String getU_service_01() {
		return u_service_01;
	}

	public void setU_service_01(String u_service_01) {
		this.u_service_01 = u_service_01;
	}

	public String getU_service_02() {
		return u_service_02;
	}

	public void setU_service_02(String u_service_02) {
		this.u_service_02 = u_service_02;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getDel_yn() {
		return del_yn;
	}

	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
	}

	private String del_yn;
	
	public MemberVO() {
		System.out.println("MemberVO 생성자 호출");
	}


	
	
	
}