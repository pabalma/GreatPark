package com.myproject.greatpark.model.reservation;

import java.util.Date;

public class ReservationDTO {
	private int idx;
	private String userid;
	private int amount;
	private int faretype;
	private String f_cont;
	private int f_fare;
	private char parking_area;
	private String p_area;
	private int p_fare;
	private Date booking_date;
	private Date reg_date;
	private int total_fare;
	
	public ReservationDTO() {
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getFaretype() {
		return faretype;
	}
	public void setFaretype(int faretype) {
		this.faretype = faretype;
	}
	public String getF_cont() {
		return f_cont;
	}
	public void setF_cont(String f_cont) {
		this.f_cont = f_cont;
	}
	public int getF_fare() {
		return f_fare;
	}
	public void setF_fare(int f_fare) {
		this.f_fare = f_fare;
	}
	public char getParking_area() {
		return parking_area;
	}
	public void setParking_area(char parking_area) {
		this.parking_area = parking_area;
	}
	public String getP_area() {
		return p_area;
	}
	public void setP_area(String p_area) {
		this.p_area = p_area;
	}
	public int getP_fare() {
		return p_fare;
	}
	public void setP_fare(int p_fare) {
		this.p_fare = p_fare;
	}
	public Date getBooking_date() {
		return booking_date;
	}
	public void setBooking_date(Date booking_date) {
		this.booking_date = booking_date;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getTotal_fare() {
		return total_fare;
	}
	public void setTotal_fare(int total_fare) {
		this.total_fare = total_fare;
	}
	@Override
	public String toString() {
		return "ReservationDTO [idx=" + idx + ", userid=" + userid + ", amount=" + amount + ", faretype=" + faretype
				+ ", f_cont=" + f_cont + ", f_fare=" + f_fare + ", parking_area=" + parking_area + ", p_area=" + p_area
				+ ", p_fare=" + p_fare + ", booking_date=" + booking_date + ", reg_date=" + reg_date + ", total_fare="
				+ total_fare + "]";
	}
	
}
