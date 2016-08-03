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

		String description[] = request.getParameterValues("taskDesc[]");
		String date = request.getParameter("date");

		List<TaskDescription> taskList = new ArrayList<TaskDescription>();

		TaskManagement task = new TaskManagement();

		String[] descriptionList = description[0].split(",");
		System.out.println(descriptionList[0]);
		for (String descriptionList1 : descriptionList) {
		
				String[] descriptionList2 = descriptionList1.split("_");
				// System.out.println(descriptionList2[0] + " " +
				// descriptionList2[1]);
				TaskDescription taskDescription = new TaskDescription();
				taskDescription.setHours(Integer.parseInt(descriptionList2[1]));
				taskDescription.setDescription(descriptionList2[0]);
				taskList.add(taskDescription);
			}
	
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
