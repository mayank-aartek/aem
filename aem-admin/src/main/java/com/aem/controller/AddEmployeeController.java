package com.aem.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.AddEmployee;
import com.aem.service.AddEmployeeService;

@Controller
public class AddEmployeeController {
	
	@Autowired
	private AddEmployeeService addEmployeeService;


	@RequestMapping(value = "/employeeRegistration", method = RequestMethod.GET)
	public String showLogin(Map<String, Object> map){
		
		map.put("AddEmployee", new AddEmployee());
		System.out.println("inside employee registration controller show method");		
		return "employeeRegistration";
		}
	
	@RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
	public String saveEmployeeInformation(@ModelAttribute("AddEmployee") AddEmployee addEmployee, ModelMap model)
	{
		System.out.println("inside add employee information save method ");
		System.out.println(addEmployee.getFirstName());
		
		boolean status=addEmployeeService.save(addEmployee);
		
		System.out.println(status);
		if(status==false)
		{
			Map<String, String> map=new HashMap<String,String>();
			map.put("unsucessfull"," Registration fail");
			System.out.println("unsucessful registration");
			return "addEmployee";

		}
		else
		{
			
			System.out.println("inside registration");
			model.addAttribute("AddEmployee",new AddEmployee());
			
			return "redirect:/adminLogin.do";
		}

	}

	
}
