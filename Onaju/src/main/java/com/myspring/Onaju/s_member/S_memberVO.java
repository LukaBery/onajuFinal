package com.myspring.Onaju.s_member;

import org.springframework.stereotype.Component;

@Component("s_memberVO")
public class S_memberVO {
	private int s_number;
	private String s_name;
	private String s_email1;
	private String s_email2;
	private String s_type;
	
	public S_memberVO() {
		System.out.println("S_memberVO 생성자 메서드 호출");
	}

	public int getS_number() {
		return s_number;
	}

	public void setS_number(int s_number) {
		this.s_number = s_number;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_email1() {
		return s_email1;
	}

	public void setS_email1(String s_email1) {
		this.s_email1 = s_email1;
	}

	public String getS_email2() {
		return s_email2;
	}

	public void setS_email2(String s_email2) {
		this.s_email2 = s_email2;
	}

	public String getS_type() {
		return s_type;
	}

	public void setS_type(String s_type) {
		this.s_type = s_type;
	}
	
	

}
