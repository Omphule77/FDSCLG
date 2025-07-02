package com.miniproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniproject.dao.CustomerDaoImpl;
import com.miniproject.entity.Customer;

@Service
public class CustomerService {
	
	@Autowired
	CustomerDaoImpl customer ;

	public Customer getCustomer(int id) {
//		customer.f
		
		return null;
	}
	
	
	

}
