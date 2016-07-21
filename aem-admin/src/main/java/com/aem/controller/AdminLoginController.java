package com.aem.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.AddEmployee;
import com.aem.model.Login;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;


@Controller
public class AdminLoginController {

	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String showLogin(Map<String, Object> map){
		
		map.put("Login", new Login());
		System.out.println("Admin controller show method");	
		
		return "adminLogin";
		}
	
	
	@RequestMapping(value = "/saveAdminLogin", method = RequestMethod.POST)
	public String saveAdmin(@ModelAttribute("Login") Login login, ModelMap model,Map<String, Object> map)
	{
		System.out.println("inside controller");
		System.out.println(login.getEmail()+"  "+login.getPassword());
		
		/*boolean status=loginService.saveLoginService(login);
		if(status==false)
		{
			model.addAttribute("invalide", "invalid username or password");
			return "login";
			
		}*/
		map.put("AddEmployee", new AddEmployee());
		return "employeeRegistration";

	
	}

	
}
