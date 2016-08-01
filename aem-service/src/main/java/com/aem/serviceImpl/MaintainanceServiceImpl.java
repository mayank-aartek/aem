package com.aem.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aem.model.TaskManagement;
import com.aem.repository.MaintainanceRepository;
import com.aem.service.MaintainanceService;

@Service
public class MaintainanceServiceImpl implements MaintainanceService
{
@Autowired
MaintainanceRepository maintainanceRepository;
	
	public boolean saveTaskDescription(TaskManagement task) {
		System.out.println("");
		maintainanceRepository.save(task);
		System.out.println("inserted");	
		return true;
	}

	
	
	
	
}
