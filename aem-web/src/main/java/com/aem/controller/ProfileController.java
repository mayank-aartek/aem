package com.aem.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.AddEmployee;
import com.aem.model.Login;
import com.aem.service.ProfileService;

@Controller
public class ProfileController {
	
	@Autowired
	private ProfileService profileService;
	
	
	@RequestMapping(value = "/showProfile", method = RequestMethod.GET)
	public String showProfile(Map<String, Object> map,ModelMap model) {
		System.out.println("profile controller show method");
		AddEmployee addEmployee=profileService.getEpmloyeeDetail("deepak@gmail");
		model.addAttribute("employeeData",addEmployee);			
		return "profile";
	}
	
	
}
