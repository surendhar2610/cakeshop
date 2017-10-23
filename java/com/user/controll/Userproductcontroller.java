package com.user.controll;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Userproductcontroller {
	
	@RequestMapping(value="contactus")
	public String usercontact()
	{
		return"contactus";
	}
	@RequestMapping(value="Fogg")
	public String userFogg()
	{
		return"Fogg";
	}
	@RequestMapping(value="Britex")
	public String userBritex()
	{
		return"Britex";
	}
	@RequestMapping(value="Timex")
	public String userTimex()
	{
		return"Timex";
	}
	@RequestMapping(value="Titan")
	public String userTitan()
	{
		return"Titan";
	}
	@RequestMapping(value="Fossil")
	public String userFossil()
	{
		return"Fossil";
	}
	@RequestMapping(value="Timex1")
	public String userTimex1()
	{
		return"Timex1";
	}
	@RequestMapping(value="Fossil1")
	public String userFossil1()
	{
		return"Fossil";
	}
	@RequestMapping(value="Maserati")
	public String userMaserati()
	{
		return"Maserati";
	}
	@RequestMapping(value="Scuderia")
	public String userScuderia()
	{
		return"Scuderia";
	}
	@RequestMapping(value="Casio")
	public String userCasio()
	{
		return"Casio";
	}
	@RequestMapping(value="Diesel")
	public String userDiesel()
	{
		return"Diesel";
	}
	}

