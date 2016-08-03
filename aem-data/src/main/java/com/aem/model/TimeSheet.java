package com.aem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="timesheet")
public class TimeSheet {

	@Id	
	@GeneratedValue(strategy = GenerationType.AUTO)	
	@Column(name="ID")		
	private Integer id;
	
	@Column(name="PROJECT_NAME")	
	private String projectName;
	
	@Column(name="TASK_DISCRIPTION")	
	private String taskDiscription;
	
	@Column(name="TOTAL_HOURS")	
	private String totalHours;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getTaskDiscription() {
		return taskDiscription;
	}

	public void setTaskDiscription(String taskDiscription) {
		this.taskDiscription = taskDiscription;
	}

	public String getTotalHours() {
		return totalHours;
	}

	public void setTotalHours(String totalHours) {
		this.totalHours = totalHours;
	}

}
