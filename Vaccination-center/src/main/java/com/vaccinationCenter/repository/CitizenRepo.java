package com.vaccinationCenter.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vaccinationCenter.entity.Citizens;

@Repository
public interface CitizenRepo extends JpaRepository<Citizens, Integer> {

}
