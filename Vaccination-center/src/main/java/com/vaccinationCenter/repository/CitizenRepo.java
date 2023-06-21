package com.vaccinationCenter.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vaccinationCenter.entity.Citizens;

@Repository
public interface CitizenRepo extends JpaRepository<Citizens, Integer> {
	List<Citizens> findBycenterId(int centerId);
}
