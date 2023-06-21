package com.vaccinationCenter.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Doses {
	
	@Id
	private int numberOfDose;
	
	private String Status;

	public int getNumberOfDose() {
		return numberOfDose;
	}

	public void setNumberOfDoes(int numberOfDose) {
		this.numberOfDose = numberOfDose;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}
	
}
