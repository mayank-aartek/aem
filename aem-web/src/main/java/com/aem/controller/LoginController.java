package com.aem.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.Login;

@Controller
public class LoginController {
	

	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showLogin(Map<String, Object> map){
		System.out.println("login controller show method");		
		return "home";
		
	}
	
	/*@RequestMapping(value="/userlogin", method= RequestMethod.POST)
	public String loginRequest(@ModelAttribute("UserLogin") Login login){
		
		boolean status=loginRequest();
		
		
		
		
		return null;	
		
	}*/
	

}
