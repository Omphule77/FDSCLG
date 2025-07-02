package com.miniproject.entity;

public class ReservedTable {

	private int id;
	private String ftable;
	private String rtable;
	private String type;
	private String reserved_price;
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
	public String getFtable() {
		return ftable;
	}
	public void setFtable(String ftable) {
		this.ftable = ftable;
	}
	public String getRtable() {
		return rtable;
	}
	public void setRtable(String rtable) {
		this.rtable = rtable;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getReserved_price() {
		return reserved_price;
	}
	public void setReserved_price(String reserved_price) {
		this.reserved_price = reserved_price;
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
	public ReservedTable(int id, String ftable, String rtable, String type, String reserved_price, String path,
			String flag, String rname, String rgst) {
		super();
		this.id = id;
		this.ftable = ftable;
		this.rtable = rtable;
		this.type = type;
		this.reserved_price = reserved_price;
		this.path = path;
		this.flag = flag;
		this.rname = rname;
		this.rgst = rgst;
	}
	
	public ReservedTable() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ReservedTable [id=" + id + ", ftable=" + ftable + ", rtable=" + rtable + ", type=" + type
				+ ", reserved_price=" + reserved_price + ", path=" + path + ", flag=" + flag + ", rname=" + rname
				+ ", rgst=" + rgst + "]";
	}
	
	
}
