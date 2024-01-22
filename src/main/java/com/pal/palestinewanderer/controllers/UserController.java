package com.pal.palestinewanderer.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.pal.palestinewanderer.config.validator.UserValidator;
import com.pal.palestinewanderer.models.User;
import com.pal.palestinewanderer.services.CityService;
import com.pal.palestinewanderer.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;


@Controller
public class UserController {

	private UserService userService;
	private UserValidator userValidator;
	@Autowired
    private CityService cityService;

	public UserController(UserService userService, UserValidator userValidator, CityService cityService) {
		this.userService = userService;
		this.userValidator = userValidator;
		this.cityService = cityService;
	}

	@GetMapping("/register")
	public String registerForm(@ModelAttribute("user") User user) {
		return "registrationPage.jsp";
	}

	@PostMapping("/register")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
	    if (result.hasErrors()) {
	        return "registrationPage.jsp";
	    }
	    try {
	        userService.saveWithUserRole(user);
	        return "redirect:/home";
	    } catch (Exception e) {
	        // Handle the exception. You can log the error and/or add an error message to the model.
	        model.addAttribute("errorMessage", e.getMessage());
	        return "registrationPage.jsp"; // Redirect back to the registration page or an error page.
	    }
	}

	@GetMapping("/login")
	public String login() {
		return "loginPage.jsp";
	}
	
	@GetMapping("/admin")
	public String admin() {
		return "adminPage.jsp";
	}
	

	@GetMapping("/home")
	public String home() {
		return "home.jsp";
	}

	@GetMapping("/home/addCity")
	public String addCity() {
		return "addCity.jsp";
	}

	@GetMapping("/home/addVillage")
	public String addVillage() {
		return "addVillage.jsp";
	}

	@GetMapping("/home/addCamp")
	public String addCamp() {
		return "addCamp.jsp";
	}

	@GetMapping("/home/addActivity")
	public String addActivity() {
		return "addActivity.jsp";
	}

	@GetMapping("/home/bookActivity")
	public String bookActivity() {
		return "bookActivity.jsp";
	}

	@GetMapping("/home/addFeedback")
	public String addFeedback() {
		return "addFeedback.jsp";
	}
	
	@GetMapping("/home/addFav")
	public String addFav() {
		return "";
	}
	

	@GetMapping("/home/feedbackThankYou")
	public String feedbackThankYou() {
		return "feedbackThankYou.jsp";
	}

	@GetMapping("/home/activityThankYou")
	public String activityThankYou() {
		
		return "activityThankYou.jsp";
	}

	@GetMapping("/home/displayCity")
	public String displayCity(Model model) {
        model.addAttribute("cities", cityService.getAllCities());
		return "displayCity.jsp";
	}

	@GetMapping("/home/displayFav")
	public String displayFav() {
		return "displayFav.jsp";
	}
}
