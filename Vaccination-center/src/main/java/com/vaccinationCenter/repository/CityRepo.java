package com.vaccinationCenter.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vaccinationCenter.entity.Citizens;
import com.vaccinationCenter.entity.City;

@Repository
public interface CityRepo extends JpaRepository<City, Integer> {

}
