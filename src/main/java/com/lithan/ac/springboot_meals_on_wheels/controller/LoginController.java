package com.lithan.ac.springboot_meals_on_wheels.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.lithan.ac.springboot_meals_on_wheels.entities.User;

import com.lithan.ac.springboot_meals_on_wheels.services.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;

	//Load the Login Page
    @GetMapping("MerryMeal")
    public String onLogin() {
    	System.out.println("MerryMeal");
        return "merry_home";
    }
    
    @GetMapping("login")
    public String login() {
    	System.out.println("login");
        return "login";
    }


    @GetMapping("merry_home")
    public String merry_home() {
    	System.out.println("merry_home");
    	
        return "merry_home";
    }

    //For Login Error
    @GetMapping("login_error")
    public String onLoginError(Model model) {
        String error_msg = "Incorrect username or password. Try Again.";
        model.addAttribute("error_string", error_msg);
    	System.out.println("login_error");
        return "login";
    }
    
    //For Register
    @GetMapping("new")
	public String newUserForm(Map<String, Object> model) {
    	System.out.println("registerr");
		User user = new User();
		
		model.put("user", user);
		return "register";
	}
    
    //Save register user to database
	@PostMapping("save")
	public String saveStore(@ModelAttribute("user") User user, Model model) {
		System.out.println("/save Login Controller");
		userService.save(user);
		String register_success = "<h5> Registeration Successful! </h5>";
		model.addAttribute("register_success", register_success);
		return "register";
	}
	
	
	   

 
    
    @GetMapping("users")
    public String viewUsers(Model model) {
        List<User> users = userService.listAll();
        
        if(!CollectionUtils.isEmpty(users)) {
            model.addAttribute("userlists", users);
        }
        return "all_user";
    }
    
    @GetMapping("about")
    public String about() {
    	System.out.println("about");
        return "aboutUs";
    }
    
    
    @GetMapping("contact")
    public String contact() {
    	System.out.println("contactUs");
        return "contactUs";
    }
 
    
    
    
}
