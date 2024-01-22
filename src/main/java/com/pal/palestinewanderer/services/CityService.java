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

    public List<City> getAllCities() {
        return cityRepository.findAll();
    }

}
