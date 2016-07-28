package com.aem.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.AddEmployee;
import com.aem.model.Login;
import com.aem.service.AdminLoginService;


@Controller
public class AdminLoginController {

	@Autowired
	private AdminLoginService adminLoginService;

	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String showLogin(Map<String, Object> map){
		
		map.put("Login", new Login());
		System.out.println("Admin controller show method");	
		
		return "adminLogin";
		}
	
	
	@RequestMapping(value = "/saveAdminLogin", method = RequestMethod.POST)
	public String saveAdminLogin(@ModelAttribute("Login") Login login, ModelMap model,Map<String, Object> map)
	{
		System.out.println("inside controller");
		System.out.println(login.getEmail()+"  "+login.getPassword());
		
		boolean status=adminLoginService.findByEmailPassword(login.getEmail(),login.getPassword());
		if(status==false)
		{
			System.out.println("sorry wrong emailid and password");
			model.addAttribute("invalide", "Invalid Username or Password");
			return "adminLogin";
			
		}
		//map.put("AddEmployee", new AddEmployee());
		return "layout";

	
	}

	
}
