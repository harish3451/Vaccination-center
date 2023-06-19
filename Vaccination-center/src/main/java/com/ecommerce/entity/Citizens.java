package com.ecommerce.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Citizens {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String Name;
	
	
	@ManyToOne
	private VaccinationCenter center;


	public String getName() {
		return Name;
	}


	public void setName(String name) {
		Name = name;
	}


	public VaccinationCenter getCenter() {
		return center;
	}


	public void setCenter(VaccinationCenter center) {
		this.center = center;
	}


	public int getId() {
		return id;
	}
	
	
	
}
