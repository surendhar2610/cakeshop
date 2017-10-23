package com.user.controll;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.user.DAO.CartItemDAO;
import com.user.DAO.CustomerDAO;
import com.user.DAO.ProductDAO;
import com.user.entity.Cart;
import com.user.entity.CartItem;
import com.user.entity.Customer;
import com.user.entity.Product;
import com.user.entity.User;

@Controller
public class CartItemcontroller {
	@Autowired
	ProductDAO productdao;
	@Autowired
	CartItemDAO cartItemdao;
	@Autowired
	CustomerDAO customerdao;
	@RequestMapping("/addcart/{id}")
	public String addCartItem(@PathVariable int id,@RequestParam int units,Model model){
		Product product=productdao.getProduct(id);
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		Customer customer=customerdao.getCustomerByUsername(username);
		Cart cart=customer.getCart();
		List<CartItem> cartItems=cart.getCartItems();
		System.out.println(cart.getCartItems().size());
		for(CartItem cartItem:cartItems){
			System.out.println(cartItem.getProduct().getId());
			
		System.out.println(id);
		if(cartItem.getProduct().getId()==id){
			cartItem.setQuantity(units);
			//cartItem.setTotalPrice();
			cartItemdao.addCartItem(cartItem);
			return "redirect:/cart/getcart";
			}
		}
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(units);
		//cartItem.setTotalPrice(product.getPrize()*units);
		cartItem.setProduct(product);
		cartItem.setCart(cart);
		cartItemdao.addCartItem(cartItem);
		return "redirect:/cart/getcart";
		}
		@RequestMapping("/cart/getcart")
		public String getCart(Model model){
			User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String username=user.getUsername();
			Customer customer=customerdao.getCustomerByUsername(username);
			Cart cart=customer.getCart();
			model.addAttribute("cart",cart);
			return "cart";
			}
		@RequestMapping("/cart/removecartitem/{cartItemId}")
		public String removeCartItem(@PathVariable int cartItemId){
			cartItemdao.removeCartItem(cartItemId);
			return "redirect:/cart/getcart";
			
		}
		@RequestMapping("/cart/clearcart/{cartId}")
		public String removeAllCartItems(@PathVariable("cartId") int cartId){
			cartItemdao.removeAllCartItem(cartId);
			return "redirect:/cart/getcart";
			
		}
	
}
