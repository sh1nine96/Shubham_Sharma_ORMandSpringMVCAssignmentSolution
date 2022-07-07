package com.gl.javafsd.crm.service;

import java.util.List;

import com.gl.javafsd.crm.entity.Customer;

public interface CustomerService {
	
	List<Customer> listAll();
	
	void save(Customer customer);
	
	Customer findById(int id);
	
	void deleteById(int id);

}
