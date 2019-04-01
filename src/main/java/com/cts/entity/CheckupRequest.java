package com.cts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.NotNull;


@Entity
@Table(name="checkup_request_tab")
public class CheckupRequest {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	int id;
	
	@Column(name="Customer_ID")
	int cid;
	
	@Column(name="Doctor_ID",length=10)
	String did;

	@Column(name="Medicare_Service_ID")
	int serviceID;
		
	@NotNull
	@Column(name="appointment_date")
	String date;
	
	@Column(name="Status",length=30)
	String status;
	
	@Column(name="Result",length=500)
	String result;

	public CheckupRequest(int id, int cid, String did, int serviceID, String date, String status, String result) {
		super();
		this.id = id;
		this.cid = cid;
		this.did = did;
		this.serviceID = serviceID;
		this.date = date;
		this.status = status;
		this.result = result;
	}

	public CheckupRequest(int cid, String did, int serviceID, String date) {
		super();
		this.cid = cid;
		this.did = did;
		this.serviceID = serviceID;
		this.date = date;
		status="pending";
	}

	public CheckupRequest() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public int getServiceID() {
		return serviceID;
	}

	public void setServiceID(int serviceID) {
		this.serviceID = serviceID;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "CheckupRequest [id=" + id + ", cid=" + cid + ", did=" + did + ", serviceID=" + serviceID + ", date="
				+ date + ", status=" + status + ", result=" + result + "]";
	}
	
	
	
}