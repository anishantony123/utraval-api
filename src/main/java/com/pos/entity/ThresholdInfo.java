package com.pos.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "THRESHOLDINFO")
public class ThresholdInfo {
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private Long id;
	@Column(name = "PRICESETTED")
	private String priceSetted;
	@Column(name = "USERNAME")
	private String username;
	@Column(name = "SETTEDDATE")
	private Date settedDate;
	@Column(name = "PROPERTYCODE")
	private String propertyCode;
	@Column(name = "STATUS")
	private String status;
	@Column(name = "CHECKIN")
	private String checkIn;
	@Column(name = "CHECKOUT")
	private String checkOut;
	
	
	
	
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPropertyCode() {
		return propertyCode;
	}
	public void setPropertyCode(String propertyCode) {
		this.propertyCode = propertyCode;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPriceSetted() {
		return priceSetted;
	}
	public void setPriceSetted(String priceSetted) {
		this.priceSetted = priceSetted;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getSettedDate() {
		return settedDate;
	}
	public void setSettedDate(Date settedDate) {
		this.settedDate = settedDate;
	}
	
	
}
