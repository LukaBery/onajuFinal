package com.myspring.Onaju.admin.adminCommon.paging;

import org.springframework.stereotype.Component;

// Criteria 검색의 기준을 의미
// pageNum, amount 값을 전달하는 용도
// 기본 값으로 1페이지와 10개의 개수를 지정
@Component("criteria")
public class Criteria {
	private int pageNum;
	private int amount;
	private String join_startDate;
	private String join_endDate;
	private String h_id2;
	private String h_name2;
	private String h_sellerNum2;
	private String h_del_yn;
	private String hostInfo_name2;
	private String info_del_yn;
	private String roadAddress2;
	private String u_id2;
	private String u_del_yn;
	private String u_name2;
	private String r_del_yn;
	private String order_code2;
	private String pay_state2;
	private String notice_title2;
	private String notice_type2;
	private String title;
	private String reply_yn;
	private String a_del_yn;
	private String a_id2;
	private String a_name2;
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Criteria () {
		this(1,10);
	}
	
	public Criteria (int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	public String getJoin_startDate() {
		return join_startDate;
	}
	public void setJoin_startDate(String join_startDate) {
		this.join_startDate = join_startDate;
	}
	public String getJoin_endDate() {
		return join_endDate;
	}
	public void setJoin_endDate(String join_endDate) {
		this.join_endDate = join_endDate;
	}
	public String getH_id2() {
		return h_id2;
	}
	public void setH_id2(String h_id2) {
		this.h_id2 = h_id2;
	}
	public String getH_name2() {
		return h_name2;
	}
	public void setH_name2(String h_name2) {
		this.h_name2 = h_name2;
	}
	public String getH_sellerNum2() {
		return h_sellerNum2;
	}
	public void setH_sellerNum2(String h_sellerNum2) {
		this.h_sellerNum2 = h_sellerNum2;
	}
	public String getH_del_yn() {
		return h_del_yn;
	}
	public void setH_del_yn(String h_del_yn) {
		this.h_del_yn = h_del_yn;
	}
	public String getHostInfo_name2() {
		return hostInfo_name2;
	}
	public void setHostInfo_name2(String hostInfo_name2) {
		this.hostInfo_name2 = hostInfo_name2;
	}
	public String getInfo_del_yn() {
		return info_del_yn;
	}
	public void setInfo_del_yn(String info_del_yn) {
		this.info_del_yn = info_del_yn;
	}
	public String getRoadAddress2() {
		return roadAddress2;
	}
	public void setRoadAddress2(String roadAddress2) {
		this.roadAddress2 = roadAddress2;
	}
	public String getU_id2() {
		return u_id2;
	}
	public void setU_id2(String u_id2) {
		this.u_id2 = u_id2;
	}
	public String getU_del_yn() {
		return u_del_yn;
	}
	public void setU_del_yn(String u_del_yn) {
		this.u_del_yn = u_del_yn;
	}
	public String getU_name2() {
		return u_name2;
	}
	public void setU_name2(String u_name2) {
		this.u_name2 = u_name2;
	}
	public String getR_del_yn() {
		return r_del_yn;
	}
	public void setR_del_yn(String r_del_yn) {
		this.r_del_yn = r_del_yn;
	}
	public String getOrder_code2() {
		return order_code2;
	}
	public void setOrder_code2(String order_code2) {
		this.order_code2 = order_code2;
	}
	public String getPay_state2() {
		return pay_state2;
	}
	public void setPay_state2(String pay_state2) {
		this.pay_state2 = pay_state2;
	}
	public String getNotice_title2() {
		return notice_title2;
	}
	public void setNotice_title2(String notice_title2) {
		this.notice_title2 = notice_title2;
	}
	public String getNotice_type2() {
		return notice_type2;
	}
	public void setNotice_type2(String notice_type2) {
		this.notice_type2 = notice_type2;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getReply_yn() {
		return reply_yn;
	}
	public void setReply_yn(String reply_yn) {
		this.reply_yn = reply_yn;
	}
	public String getA_del_yn() {
		return a_del_yn;
	}
	public void setA_del_yn(String a_del_yn) {
		this.a_del_yn = a_del_yn;
	}
	public String getA_id2() {
		return a_id2;
	}
	public void setA_id2(String a_id2) {
		this.a_id2 = a_id2;
	}
	public String getA_name2() {
		return a_name2;
	}
	public void setA_name2(String a_name2) {
		this.a_name2 = a_name2;
	}
	
	
}
