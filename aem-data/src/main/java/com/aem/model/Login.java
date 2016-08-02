package com.aem.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
public class Login implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private Integer Id;
	@Column(name = "EMAIL")
	private String email;
	@Column(name = "PASSWORD")
	private String Password;
	@Column(name = "ENCRYPTED")
	private String encrypted;
	@Column(name = "CREATION_TIME")
	private String creationTime;
	@Column(name = "UPDATION_TIME")
	private String updationTime;
	@Column(name = "IS_DELETED")
	private String isDeleted;
	@Transient
	private String oldPassword;
	@Transient
	private String newPassword;
	@Transient
	private String confirmPassword;
	@Fetch(value =FetchMode.JOIN)
	@OneToMany(targetEntity = TaskManagement.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "EMPLOYEE_ID", referencedColumnName = "ID")
	List<TaskManagement> taskManagement;

	public List<TaskManagement> getTaskManagement() {
		return taskManagement;
	}

	public void setTaskManagement(List<TaskManagement> taskManagement) {
		this.taskManagement = taskManagement;
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getEncrypted() {
		return encrypted;
	}

	public void setEncrypted(String encrypted) {
		this.encrypted = encrypted;
	}

	public String getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(String creationTime) {
		this.creationTime = creationTime;
	}

	public String getUpdationTime() {
		return updationTime;
	}

	public void setUpdationTime(String updationTime) {
		this.updationTime = updationTime;
	}

	public String getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(String isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

}
