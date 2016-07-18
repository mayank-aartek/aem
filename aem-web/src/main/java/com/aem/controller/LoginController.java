package com.aem.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.Login;
//import com.aem.service.LoginService;

@Controller
public class LoginController {
	
	/*@Autowired
	private LoginService loginService;*/

	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String showLogin(Map<String, Object> map){
	/*
	 
	 */
	
		return "home";		
	}
	
	/*showing login page after click on home hyperlink*/
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String displayLogin(Map<String, Object> map){
		System.out.println("login controller");		
		return "login";		
	}	
	
	@RequestMapping(value="/userlogin", method= RequestMethod.POST)
	public String loginRequest(@ModelAttribute("UserLogin") Login login){
		
	/*	boolean status=loginService.displayLoginService();*/
		
		return null;	
		
	}
	

}
