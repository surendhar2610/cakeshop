package com.cake.DAO;

import java.util.List;

import com.cake.entity.User;

public interface UserDAO {
	
	public void adduser(User user);
	public List<User> getList();
	public void deleteuser(String username);
	public User getUser(String id);
	public void editUser(User user);
	
}
