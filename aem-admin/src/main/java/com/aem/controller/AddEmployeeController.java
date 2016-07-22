package com.aem.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.Login;

@Controller
public class EmployeeRegistrationController {

	@RequestMapping(value = "/employeeRegistration", method = RequestMethod.GET)
	public String showLogin(Map<String, Object> map){
		
		map.put("Login", new Login());
		System.out.println("inside employee registration controller show method");		
		return "employeeRegistration";
		}
	
}
