package com.aem.serviceImpl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aem.model.TimeSheet;
import com.aem.repository.TimesheetRepository;
import com.aem.service.TimesheetService;

@Service
public class TimesheetServiceImpl implements TimesheetService{
	@Autowired
	TimesheetRepository  timesheetRepository;
	 
	 
	public List showTimesheet() {
	System.out.println("timesheet service ");
	List<TimeSheet> l;
	l= timesheetRepository.findAll();
	System.out.println("service "+l);
	Iterator<TimeSheet> itr = l.iterator();
	while (itr.hasNext())
	{
		TimeSheet o=(TimeSheet) itr.next();
		
		System.out.println("after iterator"+o.getProjectName());
		
		System.out.println(o.getProjectName() +" ");
	}
	
	
		
	return l;
	
		
	}


	public boolean save(Object object) {
		// TODO Auto-generated method stub
		return false;
	}


	public List getAll() {
		// TODO Auto-generated method stub
		return null;
	}


	public Object update(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

}
