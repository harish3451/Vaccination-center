package com.vaccinationCenter.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vaccinationCenter.entity.UserDetails;

@Repository
public interface UserRepository extends JpaRepository<UserDetails, Integer>{
	UserDetails findByusername(String Username);
}
