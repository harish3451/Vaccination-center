package com.ecommerce.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class UserDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false, unique = true)
	private String username;
	private String Password;
	
	public UserDetails() {}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public int getId() {
		return id;
	}

	public UserDetails(String username, String password) {
		super();
		this.username = username;
		Password = password;
	}
	
	
	
}
