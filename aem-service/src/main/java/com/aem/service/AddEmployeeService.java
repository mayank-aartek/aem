package com.aem.service;

import com.aem.model.AddEmployee;

public interface AddEmployeeService extends Service<AddEmployee> {

	public boolean saveEmployeeService(AddEmployee addEmployee);
}
