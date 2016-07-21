package com.aem.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
/*import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.aem.repository.LoginRepository;*/
import org.springframework.stereotype.Service;

import com.aem.model.Login;
import com.aem.repository.LoginRepositroy;
import com.aem.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginRepositroy loginRepositroy;

	public boolean userLoginService(String email, String password) {
		// TODO Auto-generated method stub

		Login login = null;
		
		if (email != null || password != null) {
			login = loginRepositroy.findByEmail(email);
			if (login != null) {
				if (login.getEmail().equals(email) && login.getPassword().equals(password)) {
					return true;
				}
				return false;
			}
		}
		return false;
	}
}
