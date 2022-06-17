package com.myspring.Onaju.admin.adminBoard.vo;


import org.springframework.stereotype.Repository;

@Repository("adminNoticeVO")
public class AdminNoticeVO {
	private String a_id;
	private int notice_code;
	private String notice_title;
	private String notice_content;
	private String notice_type;
	private String notice_startDate;
	private String notice_endDate;
	private String post_check;
	private String post_chennel;
	private String notice_imageName;
	private String notice_imageType;
	private String notice_attachFile;
	private String attachType;
	private String topView_check;
	private String writeDate;
	
	private String write_startDate;
	private String write_endDate;
	
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
	public int getNotice_code() {
		return notice_code;
	}
	public void setNotice_code(int notice_code) {
		this.notice_code = notice_code;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_type() {
		return notice_type;
	}
	public void setNotice_type(String notice_type) {
		this.notice_type = notice_type;
	}
	public String getNotice_startDate() {
		return notice_startDate;
	}
	public void setNotice_startDate(String notice_startDate) {
		this.notice_startDate = notice_startDate;
	}
	public String getNotice_endDate() {
		return notice_endDate;
	}
	public void setNotice_endDate(String notice_endDate) {
		this.notice_endDate = notice_endDate;
	}
	public String getPost_check() {
		return post_check;
	}
	public void setPost_check(String post_check) {
		this.post_check = post_check;
	}
	public String getPost_chennel() {
		return post_chennel;
	}
	public void setPost_chennel(String post_chennel) {
		this.post_chennel = post_chennel;
	}
	public String getNotice_imageName() {
		return notice_imageName;
	}
	public void setNotice_imageName(String notice_imageName) {
		this.notice_imageName = notice_imageName;
	}
	public String getNotice_imageType() {
		return notice_imageType;
	}
	public void setNotice_imageType(String notice_imageType) {
		this.notice_imageType = notice_imageType;
	}
	public String getNotice_attachFile() {
		return notice_attachFile;
	}
	public void setNotice_attachFile(String notice_attachFile) {
		this.notice_attachFile = notice_attachFile;
	}
	public String getAttachType() {
		return attachType;
	}
	public void setAttachType(String attachType) {
		this.attachType = attachType;
	}
	public String getTopView_check() {
		return topView_check;
	}
	public void setTopView_check(String topView_check) {
		this.topView_check = topView_check;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
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
	
	
	
}

