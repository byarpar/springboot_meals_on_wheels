<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>springboot_meals_on_wheels</title>
    <meta name="description" content="Resto">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- External CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/select2/select2.min.css">
    <link rel="stylesheet" href="vendor/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/brands.css">

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700|Josefin+Sans:300,400,700">
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.min.css">

    <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>
    
    
    <script src="/js/custom.js"></script>
    <style>
    /* Navbar style */
.navbar {
    background-color: #ffffff; /* Background color */
    border-bottom: 1px solid #e3e3e3; /* Border color */
    padding: 10px 20px; /* Padding */
}

.navbar-brand img {
    max-width: 100%; /* Make sure the logo fits inside the navbar */
}

.navbar-toggler {
    border: none; /* Remove border from the toggler button */
}

.navbar-nav .nav-item {
    margin-right: 15px; /* Spacing between nav items */
}

.navbar-nav .nav-link {
    color: #333333; /* Link color */
    font-weight: bold; /* Bold font weight */
    transition: color 0.3s; /* Smooth color transition */
}

.navbar-nav .nav-link:hover {
    color: #007bff; /* Hover color */
}

/* Fade-in animation */
@keyframes fadeIn {
    0% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}

.navbar-nav {
    animation: fadeIn 0.5s ease-in-out; /* Apply fade-in animation to navbar links */
}
    
    
    
    
    </style>

</head>

	
	

<body data-spy="scroll" data-target="#navbar" class="static-layout">


   <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="home">
        <img src="/img/MerryMeal.png" width="120px" />
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent" style="margin-left: 20%;">
        <ul class="navbar-nav">
            <sec:authorize access="hasRole('Member')">
            
            <li class="nav-item">
                    <a class="nav-link" href="home">HOME</a>
                </li>
                
                
               
                 <li class="nav-item">
                    <a class="nav-link" href="Member">MEMBER</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Ordered_Food">ORDER FOOD</a>
                </li>
                 
                <li class="nav-item">
                    <a class="nav-link" href="Donors">D0NOR</a>
                </li>
                 <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
  
            </sec:authorize>
            
            
            <sec:authorize access="hasRole('Administrator')">
                <li class="nav-item">
                   <a class="nav-link" href="Donors_detail">Donation Management</a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="Order_detail">Order Management </a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="Kit_chen">Food Management</a>
                </li>
                 <li class="nav-item">
                   <a class="nav-link" href="Rider_detail">Rider Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="users">User Management</a>
                </li>
                
               <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
               

            </sec:authorize>
            
            <sec:authorize access="hasRole('Partner')">
             <li class="nav-item">
                    <a class="nav-link" href="home">HOME</a>
                </li>
                
               
                <li class="nav-item">
                   <a class="nav-link" href="Kit_chen">Food Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href=Kitchen_view>KITCHEN</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="Member">MEMBER</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Ordered_Food">ORDER FOOD</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="Donors">D0NOR</a>
                </li>
                 <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
 
            </sec:authorize>
            
            
             <sec:authorize access="hasRole('Rider')">
               
                <li class="nav-item">
                    <a class="nav-link" href="home">HOME</a>
     
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="Order_detail">Order Details </a>
                </li>
                
                 <li class="nav-item">
                    <a class="nav-link" href="Member">MEMBER</a>
                </li>
               
           
                  <li class="nav-item">
                    <a class="nav-link" href="Rider">RIDER</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Donors">D0NOR</a>
                </li>
                 <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
               

  

            </sec:authorize>
            
          
            
            <sec:authorize access="hasRole('Donor')">
					    <li class="nav-item">
					        <a class="nav-link" href="home">HOME</a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="Member">MEMBER</a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="Ordered_Food">ORDER FOOD</a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="Donors">DONOR</a>
					    </li>
					     <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <img id="profile-image" src="img/logo.png" alt="Logo" width="30" height="30"> User Profile
			       
			    </a>
			    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
			       <span class="dropdown-item-text" style="font-weight: bold; display: inline-block;">
						    <strong>Name:</strong> ${userName}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Email:</strong> ${email}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Location:</strong> ${location}&nbsp;&nbsp;&nbsp;<br>
						    <strong>Member Type:</strong> ${memberType}<br>
						</span>
			       
			        <div class="dropdown-divider"></div>
			        <a class="dropdown-item" href="updateProfile">Edit Profile</a> 
			        <a class="dropdown-item" href="MerryMeal">Logout</a>
			    </div>
			</li>
               
  
			</sec:authorize>
            
        </ul>
    </div>
     <div class="navbar-collapse collapse justify-content-end">
        <form class="form-inline my-2 my-lg-0" action="logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <button class="btn btn-outline-primary my-2 my-sm-0" type="submit" name="Logout">Logout</button>
        </form>
    </div>
</nav>
            
             
             
        
   


	<div id="side-nav" class="sidenav">
	<a href="javascript:void(0)" id="side-nav-close">&times;</a>
	

</div>	
<div id="side-search" class="sidenav">
	<a href="javascript:void(0)" id="side-search-close">&times;</a>
	<div class="sidenav-content">
		<form action="">

			<div class="input-group md-form form-sm form-2 pl-0">
			  <input class="form-control my-0 py-1 red-border" type="text" placeholder="Search" aria-label="Search">
			  <div class="input-group-append">
			    <button class="input-group-text red lighten-3" id="basic-text1">
			    	<i class="fas fa-search text-grey" aria-hidden="true"></i>
			    </button>
			  </div>
			</div>

		</form>
	</div>
	
 	
</div>	<div id="canvas-overlay"></div>
	<div class="boxed-page">
		
    <div class="container">
        
       
  
    </div>
</nav>	

	
<div class="hero">
  <div class="container">
	<div class="row d-flex align-items-center">
		<div class="col-lg-6 hero-left">
		    <h1 class="display-4 mb-5">We Love <br>Helping Other!</h1>
		    <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="/Donors" role="button">Support Us</a>
			    
		    </div>
		   
		    <ul class="hero-info list-unstyled d-flex text-center mb-0">
		    	<li class="border-right">
		    		<span class="lnr lnr-rocket"></span>
		    		<h5>
		    			Fast Delivery
		    		</h5>
		    	</li>
		    	<li class="border-right">
		    		<span class="lnr lnr-leaf"></span>
		    		<h5>
		    			Fresh Food
		    		</h5>
		    	</li>
		    	<li class="">
		    		<span class="lnr lnr-bubble"></span>
		    		<h5>
		    			24/7 Support
		    		</h5>
		    	</li>
		    </ul>

	    </div>
	    <div class="col-lg-6 hero-right">
	    	<div class="owl-carousel owl-theme hero-carousel">
			    <div class="item">
			    	<img class="img-fluid" src="img/mm01.jpg" alt="">
			    </div>
			    <div class="item">
			    	<img class="img-fluid" src="img/mm02.jpg" alt="">
			    </div>
			    <div class="item">
			    	<img class="img-fluid" src="img/mm03.jpg" alt="">
			    </div>
			</div>
	    </div>
	</div>
  </div>
</div>	
	<!-- Welcome Section -->
<section id="gtco-welcome" class="bg-white section-padding">
    <div class="container">
        <div class="section-content">
            <div class="row">
                <div class="col-sm-5 img-bg d-flex shadow align-items-center justify-content-center justify-content-md-end img-2" style="background-image: url(img/mm04.jpg);">
                    
                </div>
                <div class="col-sm-7 py-5 pl-md-0 pl-4">
                    <div class="heading-section pl-lg-5 ml-md-5">
                        <span class="subheading">
                            About
                        </span>
                        <h2>
                           Welcome to Meals On Wheels
                        </h2>
                    </div>
                    <div class="pl-lg-5 ml-md-5">
                        <p>As a leading enterprise solution provider, Unity One Solutions places a strong emphasis on understanding and meeting the needs of our diverse clientele. Our customers come from various industries and sectors, ranging from small businesses to large corporations, government agencies, and non-profit organizations.</p>
                        <h3 class="mt-5">OUR FOCUS</h3>
                        <div class="row">
                            <div class="col-4">
                                <a href="#" class="thumb-menu">
                                    <img class="img-fluid img-cover" src="img/mm05.jpg" />
                                    <h6>Satisfaction </br>and </br>Convenience</h6>
                                </a>
                            </div>
                            <div class="col-4">
                                <a href="#" class="thumb-menu">
                                    <img class="img-fluid img-cover" src="img/mm06.jpg" />
                                    <h6>Health </br>and</br> Well-being</h6>
                                </a>
                            </div>
                            <div class="col-4">
                                <a href="#" class="thumb-menu">
                                    <img class="img-fluid img-cover" src="img/mm07.jpg"/>
                                    <h6>Dignity </br>and </br>Respect</h6>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End of Welcome Section -->		<!-- Special Dishes Section -->
<section id="gtco-special-dishes" class="bg-grey section-padding">
    <div class="container">
        <div class="section-content">
            <div class="heading-section text-center">
                <span class="subheading">
                    Feeding Futures
                </span>
                <h2>
                    MerryMeal's Missions
                </h2>
            </div>
            <div class="row mt-5">
                <div class="col-lg-5 col-md-6 align-self-center py-5">
                    <h2 class="special-number">01.</h2>
                    <div class="dishes-text">
                        <h3><span> Daily</span><br> Hot Meal Delivery</h3>
                        <p class="pt-3" style="text-align: justify;"> John is an 80-year-old widower living alone in his small apartment. Due to his age and declining health, he finds it increasingly challenging to cook nutritious meals for himself every day. His family lives in another state, and he has limited mobility, making it difficult for him to go grocery shopping regularly.</br> Recognizing John's needs, MerryMeal, a charitable organization dedicated to supporting homebound adults, includes him in their daily hot meal delivery service. Every weekday, like clockwork, John receives a knock on his door around noon. He opens it to find a friendly volunteer from MerryMeal holding a warm, freshly prepared meal just for him.
                        The meals provided by MerryMeal are carefully planned to meet the nutritional needs of older adults like John. They include a balance of protein, vegetables, and carbohydrates, ensuring that John receives the nutrients necessary to maintain his health and well-being.
                        </p>
                        
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-2 col-md-6 align-self-center mt-4 mt-md-0">
                    <img src="img/mm08.jpg" alt="" class="img-fluid shadow w-100">
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-lg-5 col-md-6 align-self-center order-2 order-md-1 mt-4 mt-md-0">
                    <img src="img/mm09edit.jpg" alt="" class="img-fluid shadow w-100">
                </div>
                <div class="col-lg-5 offset-lg-2 col-md-6 align-self-center order-1 order-md-2 py-5">
                    <h2 class="special-number">02.</h2>
                    <div class="dishes-text">
                        <h3><span>Weekend</span><br> Frozen Meal Support</h3>
                        <p class="pt-3" style="text-align: justify;">Alice, an 80-year-old widow, lives alone in a cozy apartment in the heart of the city. Despite her age, Alice remains fiercely independent, but she struggles with mobility issues that make cooking a challenge. She relies on MerryMeal's daily hot meal delivery service during the week to ensure she gets a nutritious meal each day.</br>
                        However, Alice often finds weekends to be particularly daunting. With no family nearby to assist her, she worries about how she'll manage her meals when the regular meal service is unavailable. Compounding her concerns is the fact that Alice lives outside the 10-kilometer radius of MerryMeal's outsourced kitchens.
                        Recognizing Alice's unique circumstances, MerryMeal extends their support to cover the weekends. Every Friday, a friendly volunteer arrives at Alice's door with a supply of frozen meals for the weekend. These meals are thoughtfully prepared to provide the nutrition Alice needs while also being easy to reheat and enjoy.
                        </p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End of Special Dishes Section -->		<!-- Menu Section -->
<section id="gtco-menu" class="section-padding">
    <div class="container">
        <div class="section-content">
            <div class="row mb-5">
                <div class="col-md-12">
                    <div class="heading-section text-center">
                        <span class="subheading">
                            Healthy Food
                        </span>
                        <h2>
                            Our Menu
                        </h2>
                    </div>  
                </div>
            </div>
        <div class="row">
     
   
       
      <div class="menu-container">

    <div class="col-lg-4 menu-wrap">
    <h6>Breakfast</h6>
        <div class="menu-img">
            <img class="img-fluid" src="img/mmMenu.jpg" alt="">
        </div>
        <div class="menu-details">
            <h4>Oatmeal topped with fruits and nuts or seeds.</h4>
            <p>Oatmeal is a hearty, warm cereal made from oats, a whole grain rich in fiber, vitamins, and minerals. It's often prepared by cooking rolled oats in water or milk until they reach a creamy consistency. Topping oatmeal with fruits, nuts, or seeds adds flavor, texture, and additional nutrients, creating a delicious and satisfying breakfast dish.</p>
        </div>
         <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="Order" role="button">Order</a>
			    
		    </div>
    </div>
    <div class="col-lg-4 menu-wrap">
    <h6>Lunch</h6>
        <div class="menu-img">
            <img class="img-fluid" src="img/mmMenu03.jpg" alt="">
        </div>
        <div class="menu-details">
            <h4>Chicken, tomato, avocado sandwich on whole-grain bread.</h4>
            <p>A chicken, tomato, and avocado sandwich on whole-grain bread is a nutritious option for older adults. The chicken provides lean protein essential for muscle maintenance and repair, while tomatoes offer vitamins C and K, supporting immune function and bone health. Avocado adds heart-healthy fats, aiding in cholesterol management and providing potassium for maintaining healthy blood pressure. This flavorful sandwich offers a balance of nutrients important for promoting overall health and vitality in older age.</p>
        </div>
         <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="Order" role="button">Order</a>
			    
		    </div>
    </div>
    <div class="col-lg-4 menu-wrap">
    <h6>Dinner</h6>
        <div class="menu-img">
            <img class="img-fluid" src="img/mmMenu08.jpg" alt="">
        </div>
        <div class="menu-details">
            <h4>Vegetable Stir-Fry with Tofu and Brown Rice</h4>
            <p>Vegetable Stir-Fry with Tofu and Brown Rice presents a wholesome and satisfying dinner option, featuring a delightful blend of plant-based protein and fiber-rich ingredients. Tofu, a versatile and easily digestible protein source, is stir-fried with colorful mixed vegetables such as bell peppers, broccoli, snap peas, and mushrooms, offering a variety of vitamins, minerals, and antioxidants. Served over nutty and nutritious brown rice, this flavorful stir-fry provides a balanced meal. </p>
        </div>
         <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="Order" role="button">Order</a>
			    
		    </div>
    </div>
    
</div>

      <div class="menu-container">

    <div class="col-lg-4 menu-wrap">
      <h6>Breakfast</h6>
        <div class="menu-img">
            <img class="img-fluid" src="img/mmMenu02.jpg" alt="">
        </div>
        <div class="menu-details">
            <h4>Greek Yogurt With Pineapple, Kiwi, Mango, and Ginger Syrup</h4>
            <p>Greek yogurt with pineapple, kiwi, mango, and ginger syrup is a nutritious and flavorful choice, especially suitable for older adults. Greek yogurt is rich in protein, calcium, and probiotics, supporting muscle health, bone strength, and digestive function. Pineapple, kiwi, and mango provide vitamins, minerals, and antioxidants, contributing to overall health and immune function.
            Ginger syrup adds a hint of spicy sweetness and may offer anti-inflammatory properties, beneficial for aging individuals.</p>
        </div>
         <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="Order" role="button">Order</a>
			    
		    </div>
    </div>
    <div class="col-lg-4 menu-wrap">
      <h6>Lunch</h6>
        <div class="menu-img">
            <img class="img-fluid" src="img/mmMenu04.jpg" alt="">
        </div>
        <div class="menu-details">
            <h4>Black bean and sweet potato quesadillas.</h4>
            <p>Black bean and sweet potato quesadillas are a nutritious and flavorful choice, ideal for older adults. The black beans provide plant-based protein and fiber for muscle strength and digestive health, while sweet potatoes offer vitamins, minerals, and antioxidants, supporting overall well-being. These quesadillas are a satisfying and convenient meal option, perfect for a balanced diet in older age.</p>
        </div>
         <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="Order" role="button">Order</a>
			    
		    </div>
    </div>
    <div class="col-lg-4 menu-wrap">
      <h6>Dinner</h6>
        <div class="menu-img">
            <img class="img-fluid" src="img/mmMenu07.jpg" alt="">
        </div>
        <div class="menu-details">
            <h4>Baked Chicken with Sweet Patato and Spinach</h4>
            <p>Baked Chicken Breast with Sweet Potato and Sauted Spinach presents a wholesome and flavorful dinner option, combining tender baked chicken breast with nutrient-rich sides. The lean protein of the chicken breast supports muscle health, while sweet potatoes offer a delicious source of vitamins, minerals, and fiber for sustained energy and digestion. Accompanied by lightly seasoned sauted spinach, this meal provides a balanced array of flavors and nutrients, ideal for maintaining overall wellness.</p>
        </div>
         <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="Order" role="button">Order</a>
			    
		    </div>
    </div>
    
</div>
      <div class="menu-container">
  

    <div class="col-lg-4 menu-wrap">
      <h6>Breakfast</h6>
        <div class="menu-img">
            <img class="img-fluid" src="img/mmMenu01.jpg" alt="">
        </div>
        <div class="menu-details">
            <h4>Avocado toast with Egg</h4>
            <p>Avocado toast with egg is a beneficial choice for older adults due to its nutrient-rich ingredients. Avocado provides heart-healthy fats, vitamins, and minerals, while eggs offer high-quality protein. This combination supports bone health, brain function, and muscle maintenance, which are crucial for aging individuals. Additionally, the dish is easy to prepare, making it an accessible and nutritious option for older adults looking to maintain their health and vitality.
            </p>
        </div>
         <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="Order" role="button">Order</a>
			    
		    </div>
    </div>
    <div class="col-lg-4 menu-wrap">
      <h6>Lunch</h6>
        <div class="menu-img">
            <img class="img-fluid" src="img/mmMenu05.jpeg" alt="">
        </div>
        <div class="menu-details">
            <h4>Sanchico tuna salad</h4>
            <p>Sanchico tuna salad is a refreshing and nutritious option, well-suited for older adults. Made with wholesome ingredients like tuna, fresh vegetables, and a zesty dressing, it offers protein, vitamins, and minerals essential for maintaining health and vitality. This flavorful salad provides a satisfying and convenient meal option, perfect for supporting a balanced diet in older age.</p>
        </div>
         <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="Order" role="button">Order</a>
			    
		    </div>
    </div>
    <div class="col-lg-4 menu-wrap">
      <h6>Dinner</h6>
        <div class="menu-img">
            <img class="img-fluid" src="img/mmMenu06.jpg" alt="">
        </div>
        <div class="menu-details">
            <h4>Grilled Salmon with Quinoa Salad and Steamed Vegetables</h4>
            <p>Grilled Salmon with Quinoa Salad and Steamed Vegetables offers a nutritious and satisfying meal rich in omega-3 fatty acids, lean protein, and essential vitamins. The succulent grilled salmon provides heart-healthy fats and protein, paired with a vibrant quinoa salad packed with fiber and diced vegetables for added nutrients. Alongside, a medley of steamed vegetables delivers a colorful array of vitamins, minerals, and antioxidants, completing this well-rounded dinner set, perfect for promoting overall health and well-being.</p>
        </div>
         <div class="mb-2">
		    	<a class="btn btn-primary btn-shadow btn-lg" href="Order" role="button">Order</a>
			    
		    </div>
    </div>
   
</div>


   
            </div>
        </div>
    </div>
</section>


<!-- End of menu Section -->		<!-- Testimonial Section-->
<section id="gtco-testimonial" class="overlay bg-fixed section-padding" style="background-image: url(img/testi-bg.jpg); ">
    <div class="container">
        <div class="section-content">
            <div class="heading-section text-center">
                <span class="subheading">
                    Testimony
                </span>
                <h2>
                    Our Supporter
                </h2>
            </div>
            <div class="row">
                <!-- Testimonial -->
                <div class="testi-content testi-carousel owl-carousel">
                    <div class="testi-item">
                        <i class="testi-icon fa fa-3x fa-quote-left"></i>
                        <p class="testi-text">As a proud donor to MerryMeal, I've witnessed firsthand the profound impact of their service on vulnerable adults in our community. Knowing that my contributions help provide hot meals to those who are unable to cook for themselves due to age, illness, or disability fills me with a sense of fulfillment. MerryMeal's commitment to delivering nutritious meals, even over weekends for those farther away, showcases their dedication to ensuring no one goes hungry. I'm honored to support such a vital organization that truly makes a difference in people's lives.</p>
                        <p class="testi-author">John Doe</p>
                        <p class="testi-desc"><span>Donator</span></p>
                    </div>
                    <div class="testi-item">
                        <i class="testi-icon fa fa-3x fa-quote-left"></i>
                        <p class="testi-text">As the CEO of our food service provider company, I am proud to announce our partnership with MerryMeal, a charitable organization dedicated to providing essential nutrition to vulnerable adults in need. This collaboration aligns perfectly with our company's values of community support and social responsibility. By joining forces with MerryMeal, we are leveraging our culinary expertise and logistical capabilities to ensure that high-quality, nutritious meals are delivered promptly to those who need them most. Together, we are making a meaningful difference in the lives of individuals who may otherwise struggle to access proper nourishment. Our commitment to this partnership underscores our dedication to serving our community and promoting well-being for all.</p>
                        <p class="testi-author">Mary Jane</p>
                        <p class="testi-desc">CEO of <span>FSD Co.Ltd</span></p>
                    </div>
                </div>
                <!-- End of Testimonial -->
            </div>
        </div>
    </div>
</section>


<!-- End of Testimonial Section-->		<!-- Team Section -->
<section id="gtco-team" class="bg-white section-padding">
    <div class="container">
        <div class="section-content">
            <div class="heading-section text-center">
                <span class="subheading">
                    Specialties
                </span>
                <h2>
                    Our Team
                </h2>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="team-card mb-5">
                        <img class="img-fluid" src="img/seng.jpg" alt="">
                        <div class="team-desc">
                            <h4 class="mb-0">Seng Nu Pan</h4>
                            <p class="mb-1">Partner</p>
                            <ul class="list-inline mb-0 team-social-links">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-card mb-5">
                        <img class="img-fluid" src="img/kyangWinJi.jpg" alt="">
                        <div class="team-desc">
                            <h4 class="mb-0">Kayan Win Ji</h4>
                            <p class="mb-1">Rider</p>
                            <ul class="list-inline mb-0 team-social-links">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-card mb-5">
                        <img class="img-fluid" src="img/thu.jpeg" alt="">
                        <div class="team-desc">
                            <h4 class="mb-0">Hsu Thadar</h4>
                            <p class="mb-1">Member</p>
                            <ul class="list-inline mb-0 team-social-links">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-card mb-5">
                        <img class="img-fluid" src="img/kaungMyat.jpg" alt="">
                        <div class="team-desc">
                            <h4 class="mb-0">Kaung Myat Thu</h4>
                            <p class="mb-1">Donor</p>
                            <ul class="list-inline mb-0 team-social-links">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-card mb-5">
                        <img class="img-fluid" src="img/byarpar.jpg" alt="">
                        <div class="team-desc">
                            <h4 class="mb-0">Byar Par</h4>
                            <p class="mb-1">Admin</p>
                            <ul class="list-inline mb-0 team-social-links">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
		<footer class="mastfoot pb-5 bg-white section-padding pb-0">
    <div class="inner container">
         <div class="row">
         	<div class="col-lg-4">
         		<div class="footer-widget pr-lg-5 pr-0">
         			<img src="img/MerryMeal.png" class="img-fluid footer-logo mb-3" alt="">
	         		<p>Meals on Wheels: 
Hot Meal: This category is available from Monday to Friday, and the service also covers a 10 km radius. It can be inferred that these meals are intended to be served and consumed while hot.

Cold Meal: This category is available on all days of the week, and the service covers a 10 km radius. It can be inferred that these meals are intended to be served and consumed cold.</p>
	         		<nav class="nav nav-mastfoot justify-content-start">
		                <a class="nav-link" href="#">
		                	<i class="fab fa-facebook-f"></i>
		                </a>
		                <a class="nav-link" href="#">
		                	<i class="fab fa-twitter"></i>
		                </a>
		                <a class="nav-link" href="#">
		                	<i class="fab fa-instagram"></i>
		                </a>
		            </nav>
         		</div>
         		
         	</div>
         	<div class="col-lg-4">
         		<div class="footer-widget px-lg-5 px-0">
         			<h4>Open Hours</h4>
	         		<ul class="list-unstyled open-hours">
		                <li class="d-flex justify-content-between"><span>Monday</span><span>9:00 - 24:00</span></li>
		                <li class="d-flex justify-content-between"><span>Tuesday</span><span>9:00 - 24:00</span></li>
		                <li class="d-flex justify-content-between"><span>Wednesday</span><span>9:00 - 24:00</span></li>
		                <li class="d-flex justify-content-between"><span>Thursday</span><span>9:00 - 24:00</span></li>
		                <li class="d-flex justify-content-between"><span>Friday</span><span>9:00 - 02:00</span></li>
		                <li class="d-flex justify-content-between"><span>Saturday</span><span>Closed</span></li>
		                <li class="d-flex justify-content-between"><span>Sunday</span><span> Closed</span></li>
		              </ul>
         		</div>
         		
         	</div>

         	<div class="col-lg-4">
         		<div class="footer-widget pl-lg-5 pl-0">
         			<h4>Newsletter</h4>
	         		<p>Please fill out the following information to become a member of MerryMeal's "Meals On Wheels" service.</p>
	         		<form id="newsletter">
						<div class="form-group">
							<input type="email" class="form-control" id="emailNewsletter" aria-describedby="emailNewsletter" placeholder="Enter email">
						</div>
						<button type="submit" class="btn btn-primary w-100">Submit</button>
					</form>
         		</div>
         		
         	</div>
         	<div class="col-md-12 d-flex align-items-center">
         		<p class="mx-auto text-center mb-0">Copyright 2024. Group Project(DEA-GO5) .</p>
         	</div>
            
        </div>
    </div>
</footer>
	
	

	<!-- External JS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
	<script src="vendor/bootstrap/popper.min.js"></script>
	<script src="vendor/bootstrap/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js "></script>
	<script src="vendor/owlcarousel/owl.carousel.min.js"></script>
	<script src="https://cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.js"></script>
	<script src="vendor/stellar/jquery.stellar.js" type="text/javascript" charset="utf-8"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Main JS -->
	<script src="js/app.min.js "></script>
</body>
</html>