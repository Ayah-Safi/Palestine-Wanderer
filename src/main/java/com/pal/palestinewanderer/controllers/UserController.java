package com.pal.palestinewanderer.controllers;



import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pal.palestinewanderer.config.validator.UserValidator;
import com.pal.palestinewanderer.models.City;
import com.pal.palestinewanderer.models.User;
import com.pal.palestinewanderer.services.CityService;
import com.pal.palestinewanderer.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;


@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
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
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,
			HttpSession session) {
		if (result.hasErrors()) {
			return "registrationPage.jsp";
		}
		try {
			userService.saveWithUserRole(user);
			return "redirect:/login";
		} catch (Exception e) {
			// Handle the exception. You can log the error and/or add an error message to
			// the model.
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
        String username = auth.getName(); 
        
        User user = userService.findByUsername(username);
        if (user != null) {
            String firstName = user.getFname();
            model.addAttribute("firstName", firstName);
        }

        List<City> cities = cityService.findAllCities();
        model.addAttribute("cities", cities);

        return "home.jsp";
    }

	@GetMapping("/home/addFav/{cityId}")
	public ModelAndView addFav(@PathVariable("cityId") Long cityId, Principal principal) {
	    ModelAndView modelAndView = new ModelAndView("yourPicks.jsp");
	    
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); 
	    User user = userService.findByUsername(username);
	    
	    if (user != null) {
	        City city = cityService.findById(cityId);
	        
	        if (city != null && !user.getFavoriteCities().contains(city)) {
	            user.addCityToFavorites(city);
	            userService.saveUser(user);
	        }
	        
	        // Fetch and add the list of favorite cities to the ModelAndView
	        List<City> favoriteCities = user.getFavoriteCities();
	        modelAndView.addObject("favoriteCities", favoriteCities);
	    } else {
	        // Handle case where user is not found
	        modelAndView.addObject("error", "User not found");
	    }
	    
	    return modelAndView;
	}
	
	@PostMapping("/home/removeFav/{cityId}")
	public String removeFav(@PathVariable("cityId") Long cityId, Principal principal, RedirectAttributes redirectAttributes) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName(); 
	    User user = userService.findByUsername(username);

	    if (user != null) {
	        City city = cityService.findById(cityId);

	        if (city != null && user.getFavoriteCities().contains(city)) {
	            user.getFavoriteCities().remove(city);
	            userService.saveUser(user);
	        }
	        // Fetch the updated list of favorite cities
	        List<City> favoriteCities = user.getFavoriteCities();
	        // Add favoriteCities as a flash attribute
	        redirectAttributes.addFlashAttribute("favoriteCities", favoriteCities);
	    }
	    
	    return "redirect:/home/yourPicks";
	}


	@GetMapping("/home/yourPicks")
	public String dispalyPicks() {
		return "yourPicks.jsp";
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
