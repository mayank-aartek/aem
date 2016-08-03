package com.aem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aem.model.Login;

@Component
public interface AdminLoginRepository extends JpaRepository<Login, Integer> {

	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	 Login findByEmail(String email);
	
	/*@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	Login findByEmailAndPassword(String email, String encrypted);

	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	Login findByIdAndPassword(Integer id, String encriptedPassword);
	
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.SUPPORTS)
	Login findByEmailAndIsDeleted(String username, int zero);
*/
}


 
