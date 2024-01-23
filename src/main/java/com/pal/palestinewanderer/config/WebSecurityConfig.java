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
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig{
	


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
                .requestMatchers(new MvcRequestMatcher(introspector, "/admin"))
                    .hasRole("ADMIN")
                .requestMatchers(new MvcRequestMatcher(introspector, "/home"), new MvcRequestMatcher(introspector, "/home/addFeedback"), new MvcRequestMatcher(introspector, "/home/displayCity")) // Allow all access to home and displayCity
                    .permitAll()
                .requestMatchers(
//                    new MvcRequestMatcher(introspector, "/home/addFeedback"),
                    new MvcRequestMatcher(introspector, "/home/addFav")
//                    new MvcRequestMatcher(introspector, "/home/bookActivity"),
//                    new MvcRequestMatcher(introspector, "/home/feedbackThankYou")
//                    new MvcRequestMatcher(introspector, "/home/activityThankYou")
                )
                    .authenticated() // These endpoints require authentication
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
