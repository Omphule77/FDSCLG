package com.miniproject.entity;

import java.time.LocalDate;
import java.util.jar.Attributes.Name;

public class Orders {

	private int id;
	private String pname;
	private String quantity;
	private String note;
	private String address;
	private String phone1;
	private String phone2;
	private String tprice;
	private String flag;
	private String cod;
	private String name;
	private String rname;
	private String path;
	private String datetime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getTprice() {
		return tprice;
	}
	public void setTprice(String tprice) {
		this.tprice = tprice;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getCod() {
		return cod;
	}
	public void setCod(String cod) {
		this.cod = cod;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Orders(int id, String pname, String quantity, String note, String address, String phone1, String phone2,
			String tprice, String flag, String cod, String name, String rname, String path, String datetime) {
		super();
		this.id = id;
		this.pname = pname;
		this.quantity = quantity;
		this.note = note;
		this.address = address;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.tprice = tprice;
		this.flag = flag;
		this.cod = cod;
		this.name = name;
		this.rname = rname;
		this.path = path;
		this.datetime = datetime;
	}
	@Override
	public String toString() {
		return "Orders [id=" + id + ", pname=" + pname + ", quantity=" + quantity + ", note=" + note + ", address="
				+ address + ", phone1=" + phone1 + ", phone2=" + phone2 + ", tprice=" + tprice + ", flag=" + flag
				+ ", cod=" + cod + ", name=" + name + ", rname=" + rname + ", path=" + path + ", datetime=" + datetime
				+ "]";
	}
	
	
	
	
	
}
