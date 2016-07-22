package com.aem.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aem.model.Login;
import com.aem.repository.AdminLoginRepository;
import com.aem.service.AdminLoginService;

@Service
public class AdminLoginServiceImpl implements AdminLoginService {

	@Autowired
	private AdminLoginRepository adminLoginRepository;

	@Transactional(propagation = Propagation.REQUIRED)
	public boolean findByEmailPassword(String email, String password) {
		Login login = null;
		if (email != null || password != null) {
			login = adminLoginRepository.findByEmail(email);
			if (login != null && !login.equals("")) {
				if (login.getEmail().equals(email) && login.getPassword().equals(password)) {
					return true;
				}
				return false;
			}
		}

		return false;
	}
}
