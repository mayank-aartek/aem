package com.aem.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aem.model.AddEmployee;
import com.aem.repository.ProfileRepository;
import com.aem.service.ProfileService;

@Service
public class ProfileServiceImpl implements ProfileService {
	
	@Autowired
	private ProfileRepository profileRepository;
	

	public AddEmployee getEpmloyeeDetail(String email) {
		// TODO Auto-generated method stub
		AddEmployee addEmployee=null;
		addEmployee=profileRepository.findByEmail(email);
		
		return addEmployee;
	}
	
	

}
