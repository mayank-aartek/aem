package com.aem.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="emp_list")
public class EmpList implements Serializable
{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	private Integer Id;
	@Column(name="PROJECT")
	private String project;
	@Column(name="WEEK_END_DATE")	
	private String date;
	@Column(name="HOURS")
  private Float totalHours;
	@Column(name="STATUS")
	private String approveStatus;
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getProject() {
		return project;
	}
	public void setProject(String project) {
		this.project = project;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Float getTotalHours() {
		return totalHours;
	}
	public void setTotalHours(Float totalHours) {
		this.totalHours = totalHours;
	}
	public String getApproveStatus() {
		return approveStatus;
	}
	public void setApproveStatus(String approveStatus) {
		this.approveStatus = approveStatus;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
