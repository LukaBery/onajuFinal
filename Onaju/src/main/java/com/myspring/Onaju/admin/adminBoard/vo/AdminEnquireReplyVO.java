package com.myspring.Onaju.admin.adminBoard.vo;

import org.springframework.stereotype.Component;

@Component("adminEquireReplyVO")
public class AdminEnquireReplyVO {
	private String re_NO;
	private String re_contents;
	private String a_id;
	private String creDate;
	private String updateDate;
	private String del_yn;
	private String enquire_NO;
	
	
	public String getRe_NO() {
		return re_NO;
	}
	public void setRe_NO(String re_NO) {
		this.re_NO = re_NO;
	}
	public String getRe_contents() {
		return re_contents;
	}
	public void setRe_contents(String re_contents) {
		this.re_contents = re_contents;
	}
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getCreDate() {
		return creDate;
	}
	public void setCreDate(String creDate) {
		this.creDate = creDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public String getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
	}
	public String getEnquire_NO() {
		return enquire_NO;
	}
	public void setEnquire_NO(String enquire_NO) {
		this.enquire_NO = enquire_NO;
	}
	
	
}
