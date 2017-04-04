package model;

import java.sql.Date;

public class Reservation {
	private String id;
	private String rname;
	private Date res_date;
	private int res_hour;
	private String res_tel;
	private String res_name;
	private String res_count;
	private String avail;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public Date getRes_date() {
		return res_date;
	}
	public void setRes_date(Date res_date) {
		this.res_date = res_date;
	}
	public int getRes_hour() {
		return res_hour;
	}
	public void setRes_hour(int res_hour) {
		this.res_hour = res_hour;
	}
	public String getRes_tel() {
		return res_tel;
	}
	public void setRes_tel(String res_tel) {
		this.res_tel = res_tel;
	}
	public String getRes_name() {
		return res_name;
	}
	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	public String getRes_count() {
		return res_count;
	}
	public void setRes_count(String res_count) {
		this.res_count = res_count;
	}
	public String getAvail() {
		return avail;
	}
	public void setAvail(String avail) {
		this.avail = avail;
	}
}
