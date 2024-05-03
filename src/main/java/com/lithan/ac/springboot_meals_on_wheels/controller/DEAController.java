package com.lithan.ac.springboot_meals_on_wheels.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lithan.ac.springboot_meals_on_wheels.services.DonationService;
import com.lithan.ac.springboot_meals_on_wheels.services.KitchenService;
import com.lithan.ac.springboot_meals_on_wheels.services.OrderService;
import com.lithan.ac.springboot_meals_on_wheels.services.RiderService;
import com.lithan.ac.springboot_meals_on_wheels.daos.UserRepository;
import com.lithan.ac.springboot_meals_on_wheels.entities.Donation;
import com.lithan.ac.springboot_meals_on_wheels.entities.Kitchen;
import com.lithan.ac.springboot_meals_on_wheels.entities.Order;
import com.lithan.ac.springboot_meals_on_wheels.entities.Rider;
import com.lithan.ac.springboot_meals_on_wheels.entities.User;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class DEAController {

	private static final String UPLOAD_DIRECTORY = "/images";
	private static Logger logger = LoggerFactory.getLogger(DEAController.class);
	
    
    @Autowired
	private DonationService donationService;
    
    @Autowired
	private KitchenService kitchenService;
    
    
    @Autowired
	private OrderService orderService;
    
    @Autowired
   	private RiderService riderService;

    
    @Autowired
    private UserRepository userRepository;
    
    
	// For Display all car
	@GetMapping("Merry_Meal")
	public String Merry_Meal(Model model) {
		System.out.println("home");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            String currentUserName = authentication.getName();
            
            // Retrieve complete user details from the database based on the username
            User currentUser = userRepository.findByUserName(currentUserName);
            if (currentUser != null) {
            	String userName = currentUser.getUserName();
                String email = currentUser.getEmail();
                String location = currentUser.getLocation();
                String memberType = currentUser.getMemberType();
                
                // Add user data to the model
                model.addAttribute("userName", userName);
                model.addAttribute("email", email);
                model.addAttribute("location", location);
                model.addAttribute("memberType", memberType);
            }
        }
		return "home";
	}
	

	@GetMapping("home")
    public String home(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            String currentUserName = authentication.getName();
            
            // Retrieve complete user details from the database based on the username
            User currentUser = userRepository.findByUserName(currentUserName);
            if (currentUser != null) {
            	String userName = currentUser.getUserName();
                String email = currentUser.getEmail();
                String location = currentUser.getLocation();
                String memberType = currentUser.getMemberType();
                
                // Add user data to the model
                model.addAttribute("userName", userName);
                model.addAttribute("email", email);
                model.addAttribute("location", location);
                model.addAttribute("memberType", memberType);
            }
        }
        return "home"; 
    }
	

	@GetMapping("updateProfile")
    public String admin(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            String currentUserName = authentication.getName();
            
            // Retrieve complete user details from the database based on the username
            User currentUser = userRepository.findByUserName(currentUserName);
            if (currentUser != null) {
            	String userName = currentUser.getUserName();
                String email = currentUser.getEmail();
                String location = currentUser.getLocation();
                String memberType = currentUser.getMemberType();
               
                
                // Add user data to the model
                
                model.addAttribute("userName", userName);
                model.addAttribute("email", email);
                model.addAttribute("location", location);
                model.addAttribute("memberType", memberType);
            }
        }
        return "updateProfile"; 
    }

	@PostMapping("updateProfile")
	public String updateProfile(@RequestParam("email") String email,
	                            @RequestParam("location") String location,
	                            @RequestParam("userName") String userName,
	                            Authentication authentication,
	                            RedirectAttributes redirectAttributes) {
	    String currentUserName = authentication.getName();
	    
	    // Retrieve the complete user details from the database based on the username
	    User currentUser = userRepository.findByUserName(currentUserName);
	    if (currentUser != null) {
	        // Update user's profile data
	        currentUser.setUserName(userName);
	        currentUser.setEmail(email);
	        currentUser.setLocation(location);

	        // Save the updated user entity to the database
	        userRepository.save(currentUser);

	        // Add success message as flash attribute
	        redirectAttributes.addFlashAttribute("successMessage", "Profile updated successfully!");

	        return "redirect:/updateProfile"; // Redirect to the profile page
	    } else {
	        // Handle user not found
	        return "error"; // Redirect to an error page or handle appropriately
	    }
	}
	

	@GetMapping("thankyou2")
	public String thankyou2(Map<String, Object> model) {
		System.out.println("thankyou2");
		return "thankyou2";
	}
	
	@GetMapping("thankyou3")
	public String thankyou3(Map<String, Object> model) {
		System.out.println("thankyou3");
		return "thankyou3";
	}
	
	@GetMapping("thankyou")
	public String thankyou(Map<String, Object> model) {
		System.out.println("thankyou");
		return "thankyou";
	}
	
	@GetMapping("Donors")
	public String Donors(Map<String, Object> model) {
		System.out.println("Donors");
		Donation donation = new Donation();
		model.put("Donor", donation);
		return "Donors";
	}

	@PostMapping("Donors")
	public String saveDonors(Donation donation, Model model) throws Exception {
		System.out.println("Donor");
	    donationService.saveDonors(donation);
	    return "redirect:thankyou2";
	}
	 
    @GetMapping("Donors_detail")
    public String Donation(Model model) {
        List<Donation> donation = donationService.listAll();
        if(!CollectionUtils.isEmpty(donation)) {
            model.addAttribute("donation_detail", donation);
        }
        System.out.println("Donors_detail");
        return "donors_de";
    }
    

	
	// For display new car FORM
	@GetMapping("Order")
	public String Order(Map<String, Object> model) {
		Donation order = new Donation();
		model.put("Order", order);
		System.out.println("Order");
		return "Order";
	}
	
	@PostMapping("Orders")
	public String saveOrder(Order order, Model model) throws Exception {
		System.out.println("Order");
		orderService.saveOrder(order);
	    return "redirect:thankyou";
	}
	
    @GetMapping("Order_detail")
    public String order_lists(Model model) {
        List<Order> order = orderService.listAll();
        if(!CollectionUtils.isEmpty(order)) {
            model.addAttribute("order_detail", order);
        }
        
        System.out.println("order_detail");
        return "order_de";
    }
    
    


	// For display new car FORM
	@GetMapping("Rider")
	public String Rider(Map<String, Object> model) {
		Rider rider = new Rider();
		model.put("Rider", rider);
		 System.out.println("Rider");
		return "Rider";
	}
	@PostMapping("Riders")
	public String saveRider(Rider rider, Model model) throws Exception {
		riderService.saveRider(rider);
	    return "redirect:thankyou3";
	}
	 @GetMapping("Rider_detail")
	    public String rider_lists(Model model) {
	        List<Rider> rider = riderService.listAll();
	        if(!CollectionUtils.isEmpty(rider)) {
	            model.addAttribute("rider_detail", rider);
	        }
	        System.out.println("rider_de");
	        return "Rider_de";
	    }
	    
	
	// For display new car FORM
		@GetMapping("Member")
		public String Member(Map<String, Object> model) {
			System.out.println("Member");
			return "Member";
		}
	// For display new car FORM
	@GetMapping("Ordered_Food")
	public String Ordered_Food(Map<String, Object> model) {
		System.out.println("Ordered_Food");
		return "Ordered_Food";
	}
	

	// For display new car FORM

	
	@GetMapping("Kit_chen")
	public String viewKitchen(Model model) {
		List<Kitchen> kitchen = kitchenService.getAllKitchen();
		if (!CollectionUtils.isEmpty(kitchen)) {
			model.addAttribute("Kit_View", kitchen);
		}
		System.out.println("Kitchen_view");
		return "Kitchen_view";
	
	}



	// For display new car FORM
	@GetMapping("Kitchen_view")
	public String Kitchen_view(Map<String, Object> model) {
		System.out.println("Kitchen");
		Kitchen kitchen = new Kitchen();
		model.put("Kit_chens", kitchen);
		return "Kitchen";
		
	}

	
	
	// For saving new car
		@PostMapping("Kit_chen")
		public String saveCar(Kitchen Kit_chens, @RequestParam("file") MultipartFile  file, HttpSession session, Model model) throws Exception{

			System.out.println("Kit_chen");
			// Get the file name & set the file name
			String meal_photo = file.getOriginalFilename();
			System.out.println("meal photo name is "+meal_photo);
			
			if(meal_photo != null && !meal_photo.trim().isEmpty()) {
				Kit_chens.setMeal_photo(meal_photo);

			// Upload Car Photo
			ServletContext context = session.getServletContext();
			String path = context.getRealPath(UPLOAD_DIRECTORY);
			String filename = file.getOriginalFilename();

			System.out.println(path + " " + filename);
			byte[] bytes = file.getBytes();
			BufferedOutputStream stream = new BufferedOutputStream(
					new FileOutputStream(new File(path + File.separator + filename)));
			stream.write(bytes);
			stream.flush();
			stream.close();

			System.out.println("File successfully saved!");
			// End Upload Car Photo
			}
			//end of file upload
			
			System.out.println("Save & Update");
			kitchenService.savekitchen(Kit_chens);
			return "redirect:Kit_chen";
		}
		
	
		// To display update FORM with old data
		@GetMapping("edit")
		public String editCarForm(@RequestParam long id, Model model) {
			System.out.println("Update meal controller method");
			Kitchen kitchen = kitchenService.get(id);
			model.addAttribute("Kit_chens", kitchen);
			return "Kitchen";
		}

		// Delete process
		@GetMapping("delete")
		public String deleteCar(@RequestParam long id) {
			kitchenService.delete(id);
			System.out.println("delete successfully!");
			return "redirect:/Kit_chen";
		}


   

}
