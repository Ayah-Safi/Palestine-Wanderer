package com.pal.palestinewanderer.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "feedback")
public class Feedback {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "feedback_id")
	private Long id;

	@Column(columnDefinition = "LONGTEXT")
	private String description;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User userFeed;

	public User getUserFeed() {
		return userFeed;
	}

	public void setUserFeed(User userFeed) {
		this.userFeed = userFeed;
	}

	// Default constructor
	public Feedback() {
	}

	// Parameterized constructor
	public Feedback(String description, User user) {
		this.description = description;
		this.userFeed = user;
	}

	// Getters and setters
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getdescription() {
		return description;
	}

	public void setdescription(String description) {
		this.description = description;
	}



}
