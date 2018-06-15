package com.spring.enterprise.model;


import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class UserProfile {
	
	@NotEmpty(message = "Email cant be empty")
	private String email;
	
	@NotEmpty(message = "{user.gender.empty}")
	private String password;
	
	public String getPassword() {
		return password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
