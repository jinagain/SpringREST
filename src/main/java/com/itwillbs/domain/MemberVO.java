package com.itwillbs.domain;

public class MemberVO {
	private String name;
	private String tel;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "MemberVO [name=" + name + ", tel=" + tel + "]";
	}
	
}
