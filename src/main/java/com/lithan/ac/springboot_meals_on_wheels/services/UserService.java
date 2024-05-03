package com.lithan.ac.springboot_meals_on_wheels.services;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lithan.ac.springboot_meals_on_wheels.daos.RoleRepository;
import com.lithan.ac.springboot_meals_on_wheels.daos.UserRepository;
import com.lithan.ac.springboot_meals_on_wheels.entities.Donation;
import com.lithan.ac.springboot_meals_on_wheels.entities.User;

import java.util.HashSet;

@Service
@Transactional
public class UserService {
	@Autowired
	UserRepository repo;

	@Autowired
    private RoleRepository roleRepository;
	
	public void save(User user) {		
	
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		 
        repo.save(user);	
	}

	public List<User> listAll() {
		return (List<User>) repo.findAll();
	}

	public User get(Long id) {
		return repo.findById(id).get();
	}

	
	
	
}