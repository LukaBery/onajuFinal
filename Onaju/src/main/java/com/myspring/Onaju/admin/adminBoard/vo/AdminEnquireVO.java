package com.myspring.Onaju.admin.adminBoard.vo;

import org.springframework.stereotype.Component;

@Component("adminEnquireVO")
public class AdminEnquireVO {
	private String enquire_NO;
	private String pre_NO;
	private String title;
	private String contents;
	private String hit_cnt;
	private String del_yn;
	private String creDate;
	private String u_id;
	private String reply_yn;
	
	
	public String getReply_yn() {
		return reply_yn;
	}
	public void setReply_yn(String reply_yn) {
		this.reply_yn = reply_yn;
	}
	public String getEnquire_NO() {
		return enquire_NO;
	}
	public void setEnquire_NO(String enquire_NO) {
		this.enquire_NO = enquire_NO;
	}
	public String getPre_NO() {
		return pre_NO;
	}
	public void setPre_NO(String pre_NO) {
		this.pre_NO = pre_NO;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getHit_cnt() {
		return hit_cnt;
	}
	public void setHit_cnt(String hit_cnt) {
		this.hit_cnt = hit_cnt;
	}
	public String getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
	}
	public String getCreDate() {
		return creDate;
	}
	public void setCreDate(String creDate) {
		this.creDate = creDate;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
	
}
