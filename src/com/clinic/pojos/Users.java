package com.clinic.pojos;

public class Users {
	private String name;
	private String email;
	private String mobno;
	private String password;
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Users(String name, String email, String mobno, String password) {
		super();
		this.name = name;
		this.email = email;
		this.mobno = mobno;
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Users [name=" + name + ", email=" + email + ", mobno=" + mobno + ", password=" + password + "]";
	}
	
	

}
