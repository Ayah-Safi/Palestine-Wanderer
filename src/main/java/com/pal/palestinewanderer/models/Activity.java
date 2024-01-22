package com.pal.palestinewanderer.models;

import java.math.BigDecimal;
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
import jakarta.persistence.Table;

@Entity
@Table(name = "activity")
public class Activity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "activity_id")
	private Long id;

	@Column(length = 255)
	private String name;

	@Column(columnDefinition = "LONGTEXT")
	private String descreption;

	private BigDecimal price;

	// Default constructor
	public Activity() {
	}

	// Parameterized constructor
	public Activity(String name, String descreption, BigDecimal price) {
		this.name = name;
		this.descreption = descreption;
		this.price = price;
	}
	
	@ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
        name = "users_activities", 
        joinColumns = @JoinColumn(name = "activity_id"), 
        inverseJoinColumns = @JoinColumn(name = "user_id"))
    private List<User> users;
	
	@ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
        name = "users_activities", 
        joinColumns = @JoinColumn(name = "activity_id"), 
        inverseJoinColumns = @JoinColumn(name = "user_id"))
    private List<User> usersList;

	// Getters and setters
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return descreption;
	}

	public void setDesc(String descreption) {
		this.descreption = descreption;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}


	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
}
