package com.aem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aem.model.AddEmployee;
import com.aem.model.Login;

public interface AddEmployeeRepository extends JpaRepository<AddEmployee, Integer>
{
	//@Query("SELECT email FROM AddEmployee WHERE DOB LIKE ?")
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	List<AddEmployee> findAll();


}
