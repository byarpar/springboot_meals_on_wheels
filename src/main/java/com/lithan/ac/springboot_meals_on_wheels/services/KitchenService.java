package com.lithan.ac.springboot_meals_on_wheels.services;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.ac.springboot_meals_on_wheels.controller.DEAController;
import com.lithan.ac.springboot_meals_on_wheels.daos.KitchenRepository;

import com.lithan.ac.springboot_meals_on_wheels.entities.Kitchen;

import javax.transaction.Transactional;
import java.util.List;


@Service
@Transactional
public class KitchenService {
  
	private static final Logger logger = LoggerFactory.getLogger(DEAController.class);


    @Autowired
    private KitchenRepository kitchenRepository;

    //Constructor
	public KitchenService(KitchenRepository kitchenRepository) {
		// TODO Auto-generated constructor stub
		this.kitchenRepository=kitchenRepository;
	}



	public List<Kitchen> getAllKitchen() {
		
        return kitchenRepository.findAll();
    }
    
    //used for both update and Save Car
    public void savekitchen(Kitchen kitchen) {
       kitchenRepository.save(kitchen);
    }
    
	public Kitchen get(Long id) {
		return kitchenRepository.findById(id).get();
	}
	public void delete(Long id) {
		kitchenRepository.deleteById(id);
	}

   
	
	

}
