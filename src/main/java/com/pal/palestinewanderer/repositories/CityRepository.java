package com.pal.palestinewanderer.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pal.palestinewanderer.models.City;
import com.pal.palestinewanderer.models.Role;

public interface CityRepository extends CrudRepository<City, Long> {

	List<City> findAll();

}
