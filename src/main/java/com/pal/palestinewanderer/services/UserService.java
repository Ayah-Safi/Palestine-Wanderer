package com.pal.palestinewanderer.services;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.pal.palestinewanderer.models.User;
import com.pal.palestinewanderer.repositories.RoleRepository;
import com.pal.palestinewanderer.repositories.UserRepository;

@Service
public class UserService {
	private UserRepository userRepository;
	private RoleRepository roleRepository;
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	public UserService(UserRepository userRepository, RoleRepository roleRepository,
			BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.userRepository = userRepository;
		this.roleRepository = roleRepository;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}

	// 1
	public void saveWithUserRole(User user) throws Exception {
		// Validate email format
		if (!isValidEmail(user.getEmail())) {
			throw new Exception("Invalid email format.");
		}

		// Check if passwords match
		if (!user.getPassword().equals(user.getPasswordConfirmation())) {
			throw new Exception("Passwords do not match.");
		}

		// Check if email already exists
		if (emailExists(user.getEmail())) {
			throw new Exception("There is already a user registered with the email provided.");
		}

		// Proceed with the original logic
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleRepository.findByName("ROLE_USER"));
		userRepository.save(user);
	}

	// Helper method to validate email format
	private boolean isValidEmail(String email) {
		Pattern pattern = Pattern.compile("^(.+)@(\\S+)$");
		Matcher matcher = pattern.matcher(email);
		return matcher.matches();
	}

	// Helper method to check if email already exists in the system
	private boolean emailExists(String email) {
		return userRepository.findByEmail(email) != null;
	}

	// 2
	public void saveUserWithAdminRole(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
		userRepository.save(user);
	}

	// 3
	public User findByUsername(String email) {
		return userRepository.findByEmail(email);
	}

	public User saveUser(User user) {
		return userRepository.save(user);
	}
}
