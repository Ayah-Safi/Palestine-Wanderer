package com.pal.palestinewanderer.models;

import java.util.List;

import jakarta.persistence.CascadeType;
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
import jakarta.persistence.Table;


@Entity
@Table(name = "cities")
public class City {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String name;

	@Column(columnDefinition = "TEXT")
	private String description;

	private String imageUrl;

	@OneToMany(mappedBy = "city", cascade = CascadeType.ALL, orphanRemoval = true)
	List<Village> villages;

	@OneToMany(mappedBy = "city", cascade = CascadeType.ALL, orphanRemoval = true)
	List<Camp> camps;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "users_favourites", joinColumns = @JoinColumn(name = "favourite_id"), inverseJoinColumns = @JoinColumn(name = "user_id"))
	private List<User> users;


	public City() {
	}

	public City(String name, String description) {
		this.name = name;
		this.description = description;
	}

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

	public String getDescription() {
		return description;
	}
	
	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Village> getVillages() {
		return villages;
	}

	public void setVillages(List<Village> villages) {
		this.villages = villages;
	}

	public List<Camp> getCamps() {
		return camps;
	}

	public void setCamps(List<Camp> camps) {
		this.camps = camps;
	}
	
	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

}
