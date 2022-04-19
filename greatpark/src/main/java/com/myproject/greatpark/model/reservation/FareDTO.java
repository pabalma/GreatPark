package com.myproject.greatpark.model.reservation;

public class FareDTO {
	private int code;
	private String cont;
	private int fare;
	public FareDTO() {	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
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
