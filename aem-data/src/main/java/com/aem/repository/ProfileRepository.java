package com.aem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aem.model.AddEmployee;
import com.aem.model.Login;

public interface ProfileRepository extends JpaRepository<AddEmployee, Integer> {

	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	AddEmployee findByEmail(String email);
	
}
