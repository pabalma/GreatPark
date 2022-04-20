package com.myproject.greatpark.model.reservation;

public class ParkingDTO {
	private String code;
	private String cont;
	private int fare;
	public ParkingDTO() {	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public int getFare() {
		return fare;
	}
	public void setFare(int fare) {
		this.fare = fare;
	}
	
}
