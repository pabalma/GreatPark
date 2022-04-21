package com.myproject.greatpark.model.info;

public class RestDTO {

	private int num;
	private String name;
	private String name2;
	private String main;
	private String site;
	private String phone;
	
	public RestDTO() {
		super();
	}
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

	public String getMain() {
		return main;
	}

	public void setMain(String main) {
		this.main = main;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "RestDTO [num=" + num + ", name=" + name + ", name2=" + name2 + ", main=" + main + ", site=" + site
				+ ", phone=" + phone + "]";
	}

}
