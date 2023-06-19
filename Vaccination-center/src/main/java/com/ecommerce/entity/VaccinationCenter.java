package com.ecommerce.entity;


import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;

@Entity
public class VaccinationCenter {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String CenterName;
	private String City;
	
	@OneToMany
	List<Citizens> person = new ArrayList<>();
	

	public List<Citizens> getPerson() {
		return person;
	}

	public void setPerson(List<Citizens> person) {
		this.person = person;
	}

	public VaccinationCenter() {
		
	}

	public String getCenterName() {
		return CenterName;
	}

	public void setCenterName(String centerName) {
		CenterName = centerName;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public int getId() {
		return id;
	}
	
}
