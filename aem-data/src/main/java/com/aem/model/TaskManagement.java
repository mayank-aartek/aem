package com.aem.model;

import java.util.List;

import javax.persistence.*;

@Entity
public class TaskManagement 
{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	Integer Id;
	@Column(name="TASK_DATE")
	String taskDate; 
	
	@OneToMany(fetch=FetchType.EAGER, targetEntity=TaskDescription.class, cascade=CascadeType.ALL)
	@JoinColumn(name = "TASK_ID", referencedColumnName="ID")
	List<TaskDescription> taskdescription;

	public String getTaskDate() {
		return taskDate;
	}

	public void setTaskDate(String taskDate) {
		this.taskDate = taskDate;
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public List<TaskDescription> getTaskdescription() {
		return taskdescription;
	}

	public void setTaskdescription(List<TaskDescription> taskdescription) {
		this.taskdescription = taskdescription;
	}
	
	
}
