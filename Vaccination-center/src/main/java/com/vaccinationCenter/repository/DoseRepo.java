package com.vaccinationCenter.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vaccinationCenter.entity.Citizens;
import com.vaccinationCenter.entity.Doses;

@Repository
public interface DoseRepo extends JpaRepository<Doses, Integer> {
	
}
