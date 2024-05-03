package com.lithan.ac.springboot_meals_on_wheels.services;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.ac.springboot_meals_on_wheels.daos.DonationRepository;

import com.lithan.ac.springboot_meals_on_wheels.entities.Donation;


import javax.transaction.Transactional;
import java.util.List;


@Service
@Transactional
public class DonationService {
  
	
    @Autowired
    private DonationRepository donationRepository;
 
	public DonationService(DonationRepository donationRepository) {	
	}

	public List<Donation> getAllDonation() {
		
        return donationRepository.findAll();
    }
    
   
    public void saveDonors(Donation donation) {
    	donationRepository.save(donation);
    }
    
	public List<Donation> listAll() {
		return (List<Donation>) donationRepository.findAll();
	}

   
}
