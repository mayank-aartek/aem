package com.aem.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.TaskDescription;
import com.aem.model.TaskManagement;
import com.aem.service.MaintainanceService;

@Controller
public class MaintainanceController {
	@Autowired
	MaintainanceService maintainanceservice;

	@RequestMapping(value = "/savetask", method = RequestMethod.POST)
	public String saveTask(ModelMap model, HttpServletRequest request) {
		System.out.println("inside task controller");
		String hours = request.getParameter("hours");
		String description = request.getParameter("taskDesc");
		String date = request.getParameter("date");
		
		String[] hoursList = hours.split(" ");
		String[] descriptionList = description.split("_");
System.out.println(descriptionList[0]+" "+descriptionList[1]);
		
		List<TaskDescription> taskList = new ArrayList<TaskDescription>();

		//System.out.println(hours + " " + description + " " + date);
		TaskManagement task = new TaskManagement();
		
		for (int hour = 0; hour < hoursList.length; hour++) {
			TaskDescription taskDescription = new TaskDescription();
			taskDescription.setHours(Integer.parseInt(hoursList[hour]));
			taskDescription.setDescription(descriptionList[hour]);
			System.out.println(taskDescription.getHours()+" "+taskDescription.getDescription() );
			taskList.add(taskDescription);
			

		}
		for(TaskDescription ts:taskList)
		{
			System.out.println(ts.getDescription()+" "+ts.getHours());
		}
		//System.out.println(taskList);
		task.setTaskdescription(taskList);
		task.setTaskDate(date);
		boolean taskStatus = maintainanceservice.saveTaskDescription(task);

		if (taskStatus) {
			return "redirect:/employeemanagement";
		}
		return "dashboard";
		// return "employeemanagement";
	}

}
