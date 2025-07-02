package com.miniproject.entity;

public class Admin {

	private int id;
	private String name;
	private String email;
	private String phone1;
	private String address;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Admin(int id, String name, String email, String phone1, String address, String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone1 = phone1;
		this.address = address;
		this.password = password;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", email=" + email + ", phone1=" + phone1 + ", address=" + address
				+ ", password=" + password + "]";
	}
	
	
}
