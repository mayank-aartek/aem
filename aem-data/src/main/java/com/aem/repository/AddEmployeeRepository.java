package com.aem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aem.model.AddEmployee;

public interface AddEmployeeRepository extends JpaRepository<AddEmployee, Integer> {

}
