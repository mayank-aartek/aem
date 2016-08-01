package com.aem.model;

import javax.persistence.*;

@Entity
@Table(name="TASK_DESCRIPTION")
public class TaskDescription 
{

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
@Column(name="ID")
private Integer Id;
	@Column(name="HOURS")
private	Integer hours;
	@Column(name="DESCRIPTION")
private	String description;
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public Integer getHours() {
		return hours;
	}
	public void setHours(Integer hours) {
		this.hours = hours;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
}
