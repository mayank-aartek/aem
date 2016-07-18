package com.aem.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aem.model.Login;
import com.aem.repository.LoginRepositroy;
import com.aem.service.LoginService;


@Service
public class LoginServiceImpl implements LoginService {
	
	/*@Autowired
	private LoginRepositroy loginRepositroy;
*/
	public Login userLoginService(Login login) {
		// TODO Auto-generated method stub
		
		/*boolean statusCheck= loginRepositroy*/
		
		/*List<Object> memberList = null;
		if (login != null) {
			if (login.getEmail() != null && login.getPassword() != null) {
				memberList = loginRepositroy.userLoginRepository(login.getEmail(), login.getPassword());
			}
		}
		if (memberList.size() == 0) {
			login = null;
		} else {
			login = (Login) memberList.get(0);
		}*/
		return login;
	}
	}

