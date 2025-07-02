package com.miniproject.entity;

public class DeliveryBoy {

	private int id;
	private String name;
	private String email;
	private String phone1;
	private String phone2;
	private String address;
	private String dob;
	private String vd;
	private String ld;
	private String exp;
	private String idproof;
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
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getVd() {
		return vd;
	}
	public void setVd(String vd) {
		this.vd = vd;
	}
	public String getLd() {
		return ld;
	}
	public void setLd(String ld) {
		this.ld = ld;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	public String getIdproof() {
		return idproof;
	}
	public void setIdproof(String idproof) {
		this.idproof = idproof;
	}
	public DeliveryBoy(int id, String name, String email, String phone1, String phone2, String address, String dob,
			String vd, String ld, String exp, String idproof) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.address = address;
		this.dob = dob;
		this.vd = vd;
		this.ld = ld;
		this.exp = exp;
		this.idproof = idproof;
	}
	public DeliveryBoy() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "DeliveryBoy [id=" + id + ", name=" + name + ", email=" + email + ", phone1=" + phone1 + ", phone2="
				+ phone2 + ", address=" + address + ", dob=" + dob + ", vd=" + vd + ", ld=" + ld + ", exp=" + exp
				+ ", idproof=" + idproof + "]";
	}
	
	
}
