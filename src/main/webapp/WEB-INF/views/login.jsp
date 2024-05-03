<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Resto - Restaurant Bootstrap 4 Template by GetTemplates.co</title>
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
 <link href="/css/style.css" rel="stylesheet" />
    <script src="/js/custom.js"></script>
    
    <style>
        
   body {
    background-image: url('img/delivery.jpg'); /* Replace 'path/to/your/background-image.jpg' with the actual path to your image */
    background-size: 100% auto; /* Adjust background size to cover the entire width and maintain aspect ratio for height */
    background-position: center; /* Center the background image */
    background-repeat: no-repeat; /* Prevent the background image from repeating */
    padding: 20px; /* Add some padding to maintain spacing between the content and the background */
}
    
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="MerryMeal">
        <img src="/img/MerryMeal.png" width="120px" />
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

   <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="login" style="color: black;">LOGIN</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="new" style="color: black;">REGISTER</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="about" style="color: black;">ABOUT US</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact" style="color: black;">CONTACT US</a>
            </li>
            
        </ul>
    </div>
</nav>



    
   <div class="container" style="padding: 100px;">
        <div class="card">
            <h2 class="card-title">Login Here!</h2>

            <c:if test="${error_string != null}">
                <div class="alert alert-danger">
                    ${error_string}
                </div>
            </c:if>

            <form action="/login" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                <div class="form-group">
                    <label for="username">User Name:</label>
                    <input type="text" name="username" id="username" value="" class="form-control">
                </div>

                <div class="form-group">
                    <label for "password">Password:</label>
                    <input type="password" name="password" id="password" value="" class="form-control">
                </div>

                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
        </div>
    </div>

	<!-- End of Welcome Section -->	
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