package com.cake.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cake.DAO.CartDAO;
import com.cake.DAO.ProductDAO;
import com.cake.entity.Cart;

@Controller
public class OrderController {
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/CheckOut")
	public String orderConfirm(HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("username");
		List<Cart> list=cartDAO.getCartItems(username);
		
		int grandtotal=0;
		for(Cart cart:list)
		{
			grandtotal=grandtotal+(cart.getQuantity()*cart.getPrize());
		}
		m.addAttribute("grandtotal", grandtotal);
		m.addAttribute("cartitems", list);
		return "OrderConfirm";
		
	}
}
