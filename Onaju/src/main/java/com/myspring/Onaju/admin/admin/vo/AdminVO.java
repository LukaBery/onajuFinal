package com.myspring.Onaju.admin.admin.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

/* 
 * 5조 오나주 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022.05.18 
 * 관리자 VO
 */

@Component("adminVO")
public class AdminVO {
	private String a_id;
	private String a_pw;
	private String a_name;
	private String a_birth;
	private String a_phone;
	private String a_email1;
	private String a_email2;
	private String a_grade;
	private String del_yn;
	private Date joinDate;
	
	private int viewPage = 1;
	private int startNO = 1; // 페이징 초기값(1번부터 불러오겠다)
	private int endNO = 10; //페이징 초기값(10번까지 불러오겠다)
	
	
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
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getA_pw() {
		return a_pw;
	}
	public void setA_pw(String a_pw) {
		this.a_pw = a_pw;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public String getA_birth() {
		return a_birth;
	}
	public void setA_birth(String a_birth) {
		this.a_birth = a_birth;
	}
	public String getA_phone() {
		return a_phone;
	}
	public void setA_phone(String a_phone) {
		this.a_phone = a_phone;
	}
	public String getA_email1() {
		return a_email1;
	}
	public void setA_email1(String a_email1) {
		this.a_email1 = a_email1;
	}
	public String getA_email2() {
		return a_email2;
	}
	public void setA_email2(String a_email2) {
		this.a_email2 = a_email2;
	}
	public String getA_grade() {
		return a_grade;
	}
	public void setA_grade(String a_grade) {
		this.a_grade = a_grade;
	}
	public String getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

}

