package com.lithan.ac.springboot_meals_on_wheels.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.lithan.ac.springboot_meals_on_wheels.daos.OrderRepository;

import com.lithan.ac.springboot_meals_on_wheels.entities.Order;
import javax.transaction.Transactional;
import java.util.List;


@Service
@Transactional
public class OrderService {
  
	
    @Autowired
    private OrderRepository orderRepository;
 
	public OrderService(OrderRepository orderRepository) {	
	}

	public List<Order> getAllOrder() {
		
        return orderRepository.findAll();
    }
    
   
    public void saveOrder(Order order) {
    	orderRepository.save(order);
    }
    
	public List<Order> listAll() {
		return (List<Order>) orderRepository.findAll();
	}

   
}
