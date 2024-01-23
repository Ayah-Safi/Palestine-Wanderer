package com.pal.palestinewanderer.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pal.palestinewanderer.models.Feedback;
import com.pal.palestinewanderer.models.User;
import com.pal.palestinewanderer.repositories.FeedbackRepository;

@Service
public class FeedbackService {
	@Autowired
	FeedbackRepository feedbackRepository;
	
	public Feedback createfeedback(Feedback feedback, User user) {
		feedback.setUserFeed(user);
		return feedbackRepository.save(feedback);
	}
}
