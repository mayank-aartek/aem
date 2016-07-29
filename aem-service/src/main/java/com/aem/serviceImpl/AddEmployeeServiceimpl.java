package com.aem.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aem.model.AddEmployee;
import com.aem.repository.AddEmployeeRepository;
import com.aem.service.AddEmployeeService;
import com.aem.utill.AutoPasswordGenrator;
import com.aem.utill.SendMail;

@Service
public class AddEmployeeServiceimpl implements AddEmployeeService {

	@Autowired
	private AddEmployeeRepository addEmployeeRepository;
	
	
	
	public boolean save(AddEmployee addEmployee) {
		String password=AutoPasswordGenrator.createPassword();
		addEmployee.setPassword(password);
		
		System.out.println("inside before service");
		AddEmployee addEmp=null;
		addEmp =  addEmployeeRepository.save(addEmployee);
		System.out.println("after service method");
		
		System.out.println(addEmp.getId()+"  "+addEmp.getPassword());
		boolean status=SendMail.sendmail(addEmployee);
		
		return status;
	
		
	}

	public List<AddEmployee> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public AddEmployee update(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	public boolean saveEmployeeService(AddEmployee addEmployee) {
		// TODO Auto-generated method stub
		return false;
	}

	
}
