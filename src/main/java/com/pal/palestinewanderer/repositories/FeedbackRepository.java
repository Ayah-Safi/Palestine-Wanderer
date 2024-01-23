package com.pal.palestinewanderer.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pal.palestinewanderer.models.Feedback;

public interface FeedbackRepository extends CrudRepository<Feedback, Long> {
	List<Feedback> findAll();

	
}
