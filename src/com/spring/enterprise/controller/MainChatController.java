package com.spring.enterprise.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.enterprise.model.UserProfile;
@Controller

public class MainChatController {

		@RequestMapping(value="/", method = RequestMethod.GET)
		public String hello(ModelMap model) {

			model.addAttribute("user", new UserProfile());
			
			return "login";

		}
		
		@RequestMapping(value="/loginUser", method = RequestMethod.POST)
		public String loginUser(@ModelAttribute("user") @Validated UserProfile user,
				BindingResult result, Model model) {

			System.out.println("user obj - "+ user.getPassword());
			System.out.println("user obj - "+ user.getEmail());
			/*model.addAttribute("user", user);
			*/
			if (result.hasErrors()) {
				model.addAttribute("error", "Invalid usernamr/password");
					return "login";
					
			}
			else {
					return "main";
			}

		}
		
		
	}