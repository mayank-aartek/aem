package com.aem.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.EmpList;
import com.aem.model.TimeSheet;
import com.aem.service.TimesheetService;
import com.aem.serviceImpl.ListServiceImpl;

@Controller
public class TimesheetController {
	 @Autowired
	 TimesheetService timesheetService;

	 @RequestMapping (value = "/timesheet", method = RequestMethod.GET)
	 public String showtimesheet (Map<String, Object> map,ModelMap model) 
	  {
		 System.out.println("before controller"); 
	  List<TimeSheet> l;
	  l=timesheetService.showTimesheet();
	  
	  System.out.println("timesheet controller"+l.size()+"Hello");
	   
		
		
		model.addAttribute("Timesheetlist",l);
		
	  return "timesheet";
	  
	  }
}
