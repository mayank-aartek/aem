package com.aem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aem.model.TaskManagement;

public interface MaintainanceRepository extends JpaRepository<TaskManagement, Integer> 
{

	//@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	//TaskManagement save(TaskManagement task);

}
