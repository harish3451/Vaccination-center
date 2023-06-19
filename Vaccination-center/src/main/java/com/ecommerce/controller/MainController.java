package com.ecommerce.controller;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.entity.UserDetails;
import com.ecommerce.repository.UserRepository;


@Controller
public class MainController {
	
	@Autowired
	UserRepository userrepo;
	
	@PostMapping("/login")
	public String Login(@RequestParam("username") String name, @RequestParam("password") String password, Model model)
	{
		
		UserDetails user =  userrepo.findByusername(name);
		if(user== null) {
			return "register";
		}
		if(user.getPassword().equals(password)) {
			return "home";
		}
		
		model.addAttribute("name", user);
		return "index";
	}
	
	@RequestMapping("/register")
	public String ok() {
		return "register";
	}
	
	@GetMapping("/registration")
	public String Register(@RequestParam("username") String name, @RequestParam("password") String password) {
		UserDetails user = new UserDetails(name,password);
		userrepo.save(user);
		
		
		return "index";
	}
	
	
}
