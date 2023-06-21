package com.vaccinationCenter.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vaccinationCenter.entity.VaccinationCenter;

@Repository
public interface VaccinationCenterRepo extends JpaRepository<VaccinationCenter, Integer>{

}
