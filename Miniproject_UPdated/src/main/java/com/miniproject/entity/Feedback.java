package com.miniproject.entity;

public class Feedback {

	private int id;
	private String pname;
	private String rname;
	private String q1;
	private String q2;
	private String q3;
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
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getQ1() {
		return q1;
	}
	public void setQ1(String q1) {
		this.q1 = q1;
	}
	public String getQ2() {
		return q2;
	}
	public void setQ2(String q2) {
		this.q2 = q2;
	}
	public String getQ3() {
		return q3;
	}
	public void setQ3(String q3) {
		this.q3 = q3;
	}
	public Feedback(int id, String pname, String rname, String q1, String q2, String q3) {
		super();
		this.id = id;
		this.pname = pname;
		this.rname = rname;
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
	}
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Feedback [id=" + id + ", pname=" + pname + ", rname=" + rname + ", q1=" + q1 + ", q2=" + q2 + ", q3="
				+ q3 + "]";
	}
	
	
	
}
