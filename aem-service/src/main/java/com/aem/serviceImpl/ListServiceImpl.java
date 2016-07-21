package com.aem.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aem.model.EmpList;
import com.aem.repository.ListRepository;
import com.aem.service.ListService;

@Service
public class ListServiceImpl implements ListService
{
@Autowired
private ListRepository listrepository;	
	
	public List<EmpList> getList()
	{
	List<EmpList> list=	listrepository.findAll();
		return list;
	}
	
}
