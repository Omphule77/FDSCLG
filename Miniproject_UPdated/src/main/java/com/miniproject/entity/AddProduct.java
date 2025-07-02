package com.miniproject.entity;

public class AddProduct {

	private int id;
	private String pname;
	private String description;
	private String type;
	private String price;
	private String path;
	private String flag;
	private String rname;
	private String rgst;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRgst() {
		return rgst;
	}
	public void setRgst(String rgst) {
		this.rgst = rgst;
	}
	public AddProduct(int id, String pname, String description, String type, String price, String path, String flag,
			String rname, String rgst) {
		super();
		this.id = id;
		this.pname = pname;
		this.description = description;
		this.type = type;
		this.price = price;
		this.path = path;
		this.flag = flag;
		this.rname = rname;
		this.rgst = rgst;
	}
	public AddProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "AddProduct [id=" + id + ", pname=" + pname + ", description=" + description + ", type=" + type
				+ ", price=" + price + ", path=" + path + ", flag=" + flag + ", rname=" + rname + ", rgst=" + rgst
				+ "]";
	}
	
	
	
	
}
