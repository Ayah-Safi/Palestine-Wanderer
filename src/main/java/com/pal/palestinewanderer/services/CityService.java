package com.pal.palestinewanderer.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pal.palestinewanderer.models.City;
import com.pal.palestinewanderer.repositories.CityRepository;

@Service
public class CityService {

	@Autowired
	private CityRepository cityRepository;

	public List<City> findAllCities() {
		return cityRepository.findAll();
	}

	public City findById(Long cityId) {
		return cityRepository.findById(cityId).get();
	}
	
	public City saveCity(City city) {
		return cityRepository.save(city);
	}

}
