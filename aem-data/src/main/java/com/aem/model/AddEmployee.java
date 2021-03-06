package com.aem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

@Table(name="addEmployee")
public class AddEmployee implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Id	
	@GeneratedValue(strategy = GenerationType.AUTO)		
	@Column(name="ID")		
	private Integer id;
		 
		
	@Column(name="FIRST_NAME")		
	private String firstName;	
		
	@Column(name="LAST_NAME")		
	private String lastName;
		
		
	@Column(name="CONTACT_NUMBER")		
	private String contactNo;
		
		
	@Column(name="REFRENCE_NUMBER")
	private String refrenceNo;
		
		
	@Column(name="GENDER")		
	private String gender;
		
		
	@Column(name="DATE_OF_BIRTH")		
	private String DOB;
		
		
	@Column(name="BLOOD_GROUP")		
	private String bloodGroup;
		
		
	@Column(name="MARITAL_STATUS")		
	private String maritalStatus;
		
		
	@Column(name="DESIGNATION")		
	private String designation;
		
		
	@Column(name="EMAIL")		
	private String email;
		
		
	@Column(name="PASSWORD")		
	private String password;
		
		
	@Column(name="ADDRESS")		
	private String address;
		
		
	@Column(name="CITY")		
	private String city;
		
		
	@Column(name="STATE")		
	private String state;
	
	@Column(name="COUNTRY")		
	private String country;
	
		
	public String getCountry() {
		return country;
	}




	public void setCountry(String country) {
		this.country = country;
	}



	@Column(name="ZIP_CODE")		
	private String zipCode;
		
		
	@Column(name="NATIONALITY")		
	private String nationality;
		
		
	@Column(name="PREVIOUS_COMPANY")		
	private String previousCompany;	
		
	@Column(name="CURRENT_PACKAGE")		
	private String currentPackage;
		
	public AddEmployee(){
		
	}
	public AddEmployee(String firstName, String middleName,String lastName,String contactNo,String refrenceNo, String gender,String DOB,String bloodGroup,String maritalStatus,String designation,String email, String password,String address,String city,String state,String zipCode,String nationality,String previousCompany,String previousPackage,String currentPackage)
	{
			
			
	this.firstName = firstName;
			
	this.lastName = lastName;
			
	this.contactNo = contactNo;
			
	this.refrenceNo = refrenceNo;
			
	this.gender = gender;
			
	this.DOB =  DOB;
			
	this.bloodGroup = bloodGroup;
			
	this.maritalStatus = maritalStatus;
			
	this.designation = designation;
			
	this.email = email;
			
	this.password = password;
			
	this.address = address;
			
	this.city = city;
			
	this.state = state;
			
	this.zipCode = zipCode;
			
	this.nationality = nationality;
			
	this.previousCompany = previousCompany;
			
	this.currentPackage = currentPackage;
			
		
		
		
	}



		
	public Integer getId() {
			return id;
		}



		public void setId(Integer id) {
			this.id = id;
		}



		public String getFirstName() {
			return firstName;
		}



		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		
		public String getLastName() {
			return lastName;
		}



		public void setLastName(String lastName) {
			this.lastName = lastName;
		}



		public String getContactNo() {
			return contactNo;
		}



		public void setContactNo(String contactNo) {
			this.contactNo = contactNo;
		}



		public String getRefrenceNo() {
			return refrenceNo;
		}



		public void setRefrenceNo(String refrenceNo) {
			this.refrenceNo = refrenceNo;
		}



		public String getGender() {
			return gender;
		}



		public void setGender(String gender) {
			this.gender = gender;
		}



		public String getDOB() {
			return DOB;
		}



		public void setDOB(String dOB) {
			DOB = dOB;
		}



		public String getBloodGroup() {
			return bloodGroup;
		}



		public void setBloodGroup(String bloodGroup) {
			this.bloodGroup = bloodGroup;
		}



		public String getMaritalStatus() {
			return maritalStatus;
		}



		public void setMaritalStatus(String maritalStatus) {
			this.maritalStatus = maritalStatus;
		}



		public String getDesignation() {
			return designation;
		}



		public void setDesignation(String designation) {
			this.designation = designation;
		}



		public String getEmail() {
			return email;
		}



		public void setEmail(String email) {
			this.email = email;
		}



		public String getPassword() {
			return password;
		}



		public void setPassword(String password) {
			this.password = password;
		}



		public String getAddress() {
			return address;
		}



		public void setAddress(String address) {
			this.address = address;
		}



		public String getCity() {
			return city;
		}



		public void setCity(String city) {
			this.city = city;
		}



		public String getState() {
			return state;
		}



		public void setState(String state) {
			this.state = state;
		}



		public String getZipCode() {
			return zipCode;
		}



		public void setZipCode(String zipCode) {
			this.zipCode = zipCode;
		}



		public String getNationality() {
			return nationality;
		}



		public void setNationality(String nationality) {
			this.nationality = nationality;
		}



		public String getPreviousCompany() {
			return previousCompany;
		}



		public void setPreviousCompany(String previousCompany) {
			this.previousCompany = previousCompany;
		}



		public String getCurrentPackage() {
			return currentPackage;
		}



		public void setCurrentPackage(String currentPackage) {
			this.currentPackage = currentPackage;
		}

	}

