package com.lithan.ac.springboot_meals_on_wheels.daos;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.ac.springboot_meals_on_wheels.entities.Kitchen;



@Repository
public interface KitchenRepository extends JpaRepository<Kitchen, Long> {
	
    
  
    
}
