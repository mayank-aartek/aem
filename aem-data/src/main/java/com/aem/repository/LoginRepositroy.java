package com.aem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aem.model.Login;

@Component
public interface LoginRepositroy extends JpaRepository<Login, Integer> {
	
	
	/*public List<Object> userLoginRepository(String userEmail,String userPassword);*/
	/*@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	Login findByemailAndPassword(String email, String Password);*/
	
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	Login findByEmail(String email);
	
	/*@Query("select l from login l where l.EMAIL=?1 and l.PASSWORD=?2")
	Login findByEmailAndPassword(String email,String Password);
	*/
	
	

	
	
}
