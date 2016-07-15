package com.aem.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.Login;

@Controller
public class LoginController {
	

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(Map<String, Object> map){
		map.put("Login", new Login());	
		return "login";		
	}
	
	/*showing login page after click on home hyperlink*/
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showHomeLogin(Map<String, Object> map){
		map.put("Login", new Login());		
		return "login";		
	}
	
	
	
	
	
	/*@RequestMapping(value="/userlogin", method= RequestMethod.POST)
	public String loginRequest(@ModelAttribute("UserLogin") Login login){
		
		boolean status=loginRequest();
		
		
		
		
		return null;	
		
	}*/
	

}
