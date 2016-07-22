package com.aem.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.EmpList;
import com.aem.service.ListService;
@Controller
public class TabController 
{
	  @Autowired
	  ListService listservice;
	  @RequestMapping (value = "/employeemanagement", method = RequestMethod.GET)
	 public String showTab (Map<String, Object> map,ModelMap model) 
	  {
	  
		
		List<EmpList> list=listservice.getList();
		model.addAttribute("emplist",list);
		
		return "employeemanagement";
	  
	 }
	
}
