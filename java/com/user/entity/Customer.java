package com.user.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.Valid;

import org.hibernate.validator.constraints.Email;
@Entity
public class Customer {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@Column
private String firstname;
@Column
private String lastname;
@Column
@Email
private String email;
@Column
private String phone;
@OneToOne(cascade=CascadeType.ALL)
@Valid
private User user;
@OneToOne(cascade=CascadeType.ALL)
@Valid
private Cart cart;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}
}
