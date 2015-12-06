package com.pos.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "USERTAGS")
public class UserTags {
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO) 
	private Long id;
	@Column(name = "USERNAME")
	private String username;
	@Column(name = "USERPLACE")
	private String userPlace;
	@Column(name = "ACTIVITY")
	private String activity;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserPlace() {
		return userPlace;
	}
	public void setUserPlace(String userPlace) {
		this.userPlace = userPlace;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	
	
	

}
