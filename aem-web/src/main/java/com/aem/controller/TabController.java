package com.aem.controller;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class TabController 
{

	@RequestMapping (value = "/employeemanagement", method = RequestMethod.GET)
	 public String showTab (Map<String, Object> map) {
	 return" employeemanagement";
	  
	 }
	
}