package com.aem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aem.model.TimeSheet;

public interface TimesheetRepository extends JpaRepository<TimeSheet, Integer> {

			
}
