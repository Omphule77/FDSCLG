package com.miniproject.entity;

public class Restro {
	private int id;
	private String rname;
	private String raddress;
	private String rphone1;
	private String rphone2;
	private String rgst;
	private String oname;
	private String oemail;
	private String ophone;
	private String outlet;
	private String otime;
	private String ctime;
	private String holiday;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRaddress() {
		return raddress;
	}
	public void setRaddress(String raddress) {
		this.raddress = raddress;
	}
	public String getRphone1() {
		return rphone1;
	}
	public void setRphone1(String rphone1) {
		this.rphone1 = rphone1;
	}
	public String getRphone2() {
		return rphone2;
	}
	public void setRphone2(String rphone2) {
		this.rphone2 = rphone2;
	}
	public String getRgst() {
		return rgst;
	}
	public void setRgst(String rgst) {
		this.rgst = rgst;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getOemail() {
		return oemail;
	}
	public void setOemail(String oemail) {
		this.oemail = oemail;
	}
	public String getOphone() {
		return ophone;
	}
	public void setOphone(String ophone) {
		this.ophone = ophone;
	}
	public String getOutlet() {
		return outlet;
	}
	public void setOutlet(String outlet) {
		this.outlet = outlet;
	}
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public String getHoliday() {
		return holiday;
	}
	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}
	public Restro(int id, String rname, String raddress, String rphone1, String rphone2, String rgst, String oname,
			String oemail, String ophone, String outlet, String otime, String ctime, String holiday) {
		super();
		this.id = id;
		this.rname = rname;
		this.raddress = raddress;
		this.rphone1 = rphone1;
		this.rphone2 = rphone2;
		this.rgst = rgst;
		this.oname = oname;
		this.oemail = oemail;
		this.ophone = ophone;
		this.outlet = outlet;
		this.otime = otime;
		this.ctime = ctime;
		this.holiday = holiday;
	}
	public Restro() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Restro [id=" + id + ", rname=" + rname + ", raddress=" + raddress + ", rphone1=" + rphone1
				+ ", rphone2=" + rphone2 + ", rgst=" + rgst + ", oname=" + oname + ", oemail=" + oemail + ", ophone="
				+ ophone + ", outlet=" + outlet + ", otime=" + otime + ", ctime=" + ctime + ", holiday=" + holiday
				+ "]";
	}
	
	
	

}
