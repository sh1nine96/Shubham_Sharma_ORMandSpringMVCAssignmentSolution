package com.gl.javafsd.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gl.javafsd.crm.entity.Customer;
import com.gl.javafsd.crm.service.CustomerService;

@Controller
@RequestMapping("/customers")
public class CustomersController {
	
	@Autowired
	private CustomerService custService;
	
	@RequestMapping("/listing")
	public String handleCustomersListing(Model theModel) {
		List<Customer> customers = custService.listAll();
		theModel.addAttribute("customers", customers);
		return "main-page";		
	}

}
