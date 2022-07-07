package com.gl.javafsd.crm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.javafsd.crm.entity.Customer;
import com.gl.javafsd.crm.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService custService;
	  
	@RequestMapping("/begin-add")
	  public String handleBeginAdd(Model theModel) {
		  Customer customer = new Customer();
		  theModel.addAttribute("customer", customer);
		  return "customer-form";		  
	  }
	
	@RequestMapping("/begin-update")
	public String handleBeginUpdate(@RequestParam("customerId") int id, Model theModel) {
		Customer customer = custService.findById(id);
		theModel.addAttribute("customer", customer);
		return "customer-form";
	}
	
	@RequestMapping("/save")
	public String handleSave(@RequestParam("id") int id,
			               @RequestParam("firstName") String firstName,
			               @RequestParam("lastName") String lastName,
			               @RequestParam("email") String email) {
		       
		Customer customer;
		if(id != 0) {
			//For Update Feature
			customer = custService.findById(id);
			customer.setFirstName(firstName);
			customer.setLastName(lastName);
			customer.setEmail(email);	
			
		}else {
			//For Adding Customer
			customer = new Customer(id, firstName, lastName, email);			
					
		}
		custService.save(customer);
		return "redirect:/customers/listing";
	}
	
	
	  @RequestMapping("/delete")
	  public String handleDelete(@RequestParam("customerId") int id) {
		  custService.deleteById(id);
		  return "redirect:/customers/listing";
	  }
	  

}
