package com.pal.palestinewanderer.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig {

	@Autowired
	private UserDetailsService userDetailsService;

	@Autowired
	HandlerMappingIntrospector introspector;

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	

	@Bean
	protected SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
	    http
	        .authorizeHttpRequests(auth -> auth
	            // Allow both authenticated and non-authenticated users to access the home, login, and register pages
	            .requestMatchers(
	                new MvcRequestMatcher(introspector, "/home"),
	                new MvcRequestMatcher(introspector, "/login"),
	                new MvcRequestMatcher(introspector, "/register"),
	                new MvcRequestMatcher(introspector, "/home/displayCities")
	            )
	                .permitAll()
	            // Restrict access to these admin-specific endpoints to only users with the ADMIN role
	            .requestMatchers(
	                new MvcRequestMatcher(introspector, "/home/addCity"),
	                new MvcRequestMatcher(introspector, "/home/addVillage"),
	                new MvcRequestMatcher(introspector, "/home/addCamp"),
	                new MvcRequestMatcher(introspector, "/home/addActivity"),
	                new MvcRequestMatcher(introspector, "/admin") // Assuming /admin is your admin page URL
	            )
	                .hasRole("ADMIN")
	            // Restrict access to these endpoints to only authenticated users
	            .requestMatchers(new MvcRequestMatcher(introspector, "/home/*")) // Matches all endpoints starting with /home/
	                .authenticated()
	            // Restrict access to the /home/removeFav/{cityId} and /home/addFav/{cityId} endpoints to only authenticated users
	            .requestMatchers(
	                new MvcRequestMatcher(introspector, "/home/removeFav/{cityId}"),
	                new MvcRequestMatcher(introspector, "/home/addFav/{cityId}")
	            )
	                .authenticated()
	            // Any other request
	            .anyRequest()
	                .permitAll()
	        )
	        .formLogin(form -> form
	            .loginPage("/login")
	            .defaultSuccessUrl("/home")
	            .permitAll()
	        )
	        .logout(logout -> logout
	            .logoutUrl("/logout")  // URL to trigger logout
	            .logoutSuccessUrl("/home")  // URL to redirect after logout
	            .deleteCookies("JSESSIONID")  // Delete the JSESSIONID cookie
	            .invalidateHttpSession(true)  // Invalidate session
	            .clearAuthentication(true)  // Clear authentication
	            .permitAll()
	        );

	    return http.build();
	}

	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
	    auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
	}
}