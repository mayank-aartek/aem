package com.aem.model;

import java.io.Serializable;

import javax.persistence.*;
@Entity
public class Login implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	Integer Id;
	@Column(name="EMAIL")
	String email;
	@Column(name="PASSWORD")
	String Password;
	@Column(name="ENCRYPTED")
	String	encrypted;
	@Column(name="CREATION_TIME")
	String creationTime;
	@Column(name="UPDATION_TIME")
	String updationTime;
	@Column(name="IS_DELETED")
	String isDeleted;
	@Transient
	String oldPassword;
	@Transient
	String newPassword;
	@Transient
	String confirmPassword;
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
