package com.pos.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "ANYALYTICS")
public class Analytics {
	@Id
	@Column(name = "ID")
	private Long id;
	@Column(name = "PROPERTY_CODE")
	private String propertyCode;
	@Column(name = "DATE")
	private Date date;
	@Column(name = "PROPERTY_AMOUNT")
	private Double amount;
	
	public String getPropertyCode() {
		return propertyCode;
	}
	public void setPropertyCode(String propertyCode) {
		this.propertyCode = propertyCode;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	
	

}
