package com.cake.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Userproductcontroller {
	
	@RequestMapping(value="contactus")
	public String usercontact()
	{
		return"contactus";
	}
	@RequestMapping("/OrderConfirm")
	public String showorder()
	{
		return "OrderComplete";
	}

	
	
	
	
	
	}

