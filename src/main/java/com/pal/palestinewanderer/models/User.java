package com.pal.palestinewanderer.models;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Size(min = 3, message = "First name must be greater than 3 characters")
	private String fname;

	@Size(min = 3, message = "Last name must be greater than 3 characters")
	private String lname;

	@Email(message = "Email should be valid")
	@Column(nullable = false, unique = true)
	private String email;

	@Size(min = 5, message = "Password must be greater than 5 characters")
	private String password;

	@Transient
	private String passwordConfirmation;
	@Column(updatable = false)

	private Date createdAt;

	private Date updatedAt;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "users_roles", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private List<Role> roles;

	@OneToMany(mappedBy = "userFeed", fetch = FetchType.LAZY)
	private List<Feedback> feedback;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "users_activities", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "activity_id"))
	private List<Activity> activities;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "users_activities", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "activity_id"))
	private List<Activity> bookedActivities;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "users_favourites", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "favourite_id"))
	private List<City> favoriteCities;

	public void addCityToFavorites(City city) {
		if (favoriteCities == null) {
			favoriteCities = new ArrayList<>();
		}
		if (!favoriteCities.contains(city)) {
			favoriteCities.add(city);
		}

	}

	public User() {
	}

	public List<Activity> getActivities() {
		return activities;
	}

	public void setActivities(List<Activity> activities) {
		this.activities = activities;
	}

	public List<Feedback> getFeedback() {
		return feedback;
	}

	public void setFeedback(List<Feedback> feedback) {
		this.feedback = feedback;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public List<Activity> getBookedActivities() {
		return bookedActivities;
	}

	public void setBookedActivities(List<Activity> bookedActivities) {
		this.bookedActivities = bookedActivities;
	}

	public List<City> getFavoriteCities() {
		return favoriteCities;
	}

	public void setFavoriteCities(List<City> favoriteCities) {
		this.favoriteCities = favoriteCities;
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
}
