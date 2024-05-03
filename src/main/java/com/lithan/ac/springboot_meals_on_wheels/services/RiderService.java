package com.lithan.ac.springboot_meals_on_wheels.services;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.ac.springboot_meals_on_wheels.daos.RiderRepository;

import com.lithan.ac.springboot_meals_on_wheels.entities.Rider;

import javax.transaction.Transactional;
import java.util.List;


@Service
@Transactional
public class RiderService {
  
	
    @Autowired
    private RiderRepository riderRepository;
 
	public RiderService(RiderRepository riderRepository) {	
	}

	public List<Rider> getAllRider() {
		
        return riderRepository.findAll();
    }
    
   
    public void saveRider(Rider rider) {
    	riderRepository.save(rider);
    }
    
	public List<Rider> listAll() {
		return (List<Rider>) riderRepository.findAll();
	}

   
}
