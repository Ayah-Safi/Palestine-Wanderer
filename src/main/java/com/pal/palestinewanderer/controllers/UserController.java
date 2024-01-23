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
import com.pal.palestinewanderer.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;


@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private UserValidator userValidator;
	


	public UserController(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;

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
	        return "redirect:/login";
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
	

	@GetMapping("/home/displayFood")
	public String displayFood() {
		return "displayFood.jsp";
	}
	@GetMapping("/home/displaySong")
	public String displaySong() {
		return "displaySong.jsp";
	}
	@GetMapping("/home/displayclothes")
	public String displayclothes() {
		return "displayclothes.jsp";
	}

	  @GetMapping("/home")
	    public String home(Model model) {
	        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        String username = auth.getName(); // Get the username (or email) of the logged-in user
	        System.out.print(username);
	        
	        User user = userService.findByUsername(username);
	        if (user != null) {
	            String firstName = user.getFname(); // Or whatever the method to get the first name is
	            model.addAttribute("firstName", firstName);
	        }
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
	public String displayCity() {
   
		return "displayCity.jsp";
	}

	@GetMapping("/home/displayFav")
	public String displayFav() {
		return "displayFav.jsp";
	}
}
