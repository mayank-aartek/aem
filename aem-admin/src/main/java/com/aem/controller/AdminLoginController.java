package com.aem.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.UserLogin;



@Controller
public class AdminLoginController {

	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String showLogin(Map<String, Object> map){
		
		map.put("UserLogin", new UserLogin());
		System.out.println("Admin controller show method");		
		return "adminLogin";
		}
	
	
	@RequestMapping(value = "/saveAdminLogin", method = RequestMethod.POST)
	public String saveAdmin(/*@ModelAttribute("UserLogin") AdminLogin login, ModelMap model*/)
	{
		System.out.println("inside controller");
		
		return "welcomePage";

	}

	
}
