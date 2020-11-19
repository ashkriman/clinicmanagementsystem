package com.clinic.pojos;

public class Clinic {
	
	private int clid;
	private String clname;
	private String cladd;
	private String clspeciality;
	public int getClid() {
		return clid;
	}
	public void setClid(int clid) {
		this.clid = clid;
	}
	public String getClname() {
		return clname;
	}
	public void setClname(String clname) {
		this.clname = clname;
	}
	public String getCladd() {
		return cladd;
	}
	public void setCladd(String cladd) {
		this.cladd = cladd;
	}
	public String getClspeciality() {
		return clspeciality;
	}
	public void setClspeciality(String clspeciality) {
		this.clspeciality = clspeciality;
	}
	public String getCtcontact() {
		return ctcontact;
	}
	public void setCtcontact(String ctcontact) {
		this.ctcontact = ctcontact;
	}
	public String getCtdesc() {
		return ctdesc;
	}
	public void setCtdesc(String ctdesc) {
		this.ctdesc = ctdesc;
	}
	public Clinic(int clid, String clname, String cladd, String clspeciality, String ctcontact, String ctdesc) {
		super();
		this.clid = clid;
		this.clname = clname;
		this.cladd = cladd;
		this.clspeciality = clspeciality;
		this.ctcontact = ctcontact;
		this.ctdesc = ctdesc;
	}
	public Clinic() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String ctcontact;
	private String ctdesc;

}
