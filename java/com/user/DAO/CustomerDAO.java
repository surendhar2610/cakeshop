package com.user.DAO;

import com.user.entity.Customer;
import com.user.entity.User;

public interface CustomerDAO {
	void registerCustomer(Customer customer);
	User validateUsername(String username);
	Customer validateEmail(String email);
	Customer getCustomerByUsername(String username);
}
