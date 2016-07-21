package com.aem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aem.model.EmpList;
import com.aem.model.Login;

public interface ListRepository extends JpaRepository<EmpList, Integer>
{

	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	 List<EmpList> findAll();
	
	
}
