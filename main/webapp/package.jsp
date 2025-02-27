<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PackageOffer</title>
    <link rel="stylesheet" href="StyleNN.css">
    <link rel="stylesheet" href="stylePActive.css">
     <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
     <style>
     
     footer{
         width: 1500px;
     }
     

     </style>
    
</head>
<body>
        <!-- header -->
        <header>
            <div class="nav-bar">
                <h2 class="logo">Drocelle</h2>
                <div class="nav-item">
                    <div class="nav-items">
                       <ul>
                        <li><a href= "Home.jsp"><i class="link-home"></i>Home</a></li>
                        <li><a href= "About.jsp"><i class="link-About"></i>About Us</a></li>
                        <li><a href="#" class="dropbtn"><i class="link-Services"></i>Our Services</a>
                          <ul class = "dropdown">
                            <li><a href="pickupanddelivery.jsp"><i class="link-home"></i>PickUp & Delivery</a></li>
                            <li><a href="package.jsp"><i class="link-home"></i>Commercial Laundry</a></li>
                            <li><a href="ManageComplaint.jsp"><i class="link-home"></i>Feedbacks & Reviews</a></li>
                          </ul>
                        </li>
                        <li><a href="CusProfile.jsp"><i class="link-contact"></i>Sign Up</a></li>
                        <li><a href="login.jsp"><i class="link-login"></i>Login</a></li>
                        <li><a href="dashbord.jsp"><i class="link-profile"></i>Profile</a></li>
                       </ul> 
                        
                        
                    </div>
                </div>
             </div>
           
        </header>
    
<div class="container package-offer">
    
    <section class="package">
        <div class="package-list">
            <p class="text-gray">Simple,Predictable pricing</p>
            <h1>laundry  <span class="highlight">Package offer</span></h1>
            <!--<p class="text-gray">FOR</p>-->
            <ul>
                <li><i class="fa-solid fa-mug-hot"></i> LITE</li>
                <li><i class="fa-solid fa-plate-wheat"></i> PRO</li>
                <li><i class="fa-solid fa-pizza-slice"></i> GROW</li>
                <li><i class="fa-solid fa-martini-glass-citrus"></i>GROW+</li>
            </ul>
            <br>
            <a href="packDetails.jsp"><button>My Package</button></a>
        </div>
        <div class="package-container">
            <div class="package-item">
                <div class="image-wrapper">
                    <div class="para-package">
                    <!-- Content goes here -->
                    
                    <ul>
                        <li>500 Orders per month</li>
                        <li>individuals or small households</li>
                        <li>Standard detergent and softener included.</li>
                        <li>Regular washing machines and dryers.</li>
                        <li>Quick turnaround time</li>
                        <li>iOS & Android app for customers</li>
                        <li>24/7 support(Email)</li>
                        <li>500 Orders per month</li>
                    </ul>
                </div>

                    <!--<img src="assets/food1.jpg" alt="" srcset="" class="food-image">-->
                </div>
                <h4 class="package-name">Lite</h4>
                <p class="price highlight">$43 <br>per month</p>
                <a href="activatePackage.jsp?package=Lite"><button>Activate</button></a>
                <!--<a href="index (1).html" class="button">Activate</a>-->
            </div>
            <div class="package-item">
                <div class="image-wrapper">
                    <div class="para-package">
                        
                        <ul>
                            <li>2000 Orders per month</li>
                            <li>higher laundry volume</li>
                            <li>Premium detergent and softener options available.</li>
                            <li>Option for eco-friendly or hypoallergenic detergent.</li>
                            <li>Priority service or expedited turnaround time./li>
                            <li>iOS & Android app for customers</li>
                            <li>24/7 support(Email)</li>
                            <li>Loyalty rewards or discounts</li>
                        </ul>
                    </div>
                   
                </div>
                <h4 class="package-name">Pro</h4>
                <p class="price highlight">$60.00 <br>per month</p>
                 <a href="activatePackage.jsp?package=Pro"><button>Activate</button></a>

            </div>
            <div class="package-item">
                <div class="image-wrapper">
                    <div class="para-package">
                        
                        <ul>
                            <li>30000 Orders per month</li>
                            <li>individuals or small households</li>
                            <li>tailored to different fabric types </li>
                            <li>high-capacity, energy-efficient washing machines</li>
                            <li>dryers with advanced technology.</li>
                            <li>iOS & Android app for customers</li>
                            <li>24/7 support(Email)</li>
                            <li>special offers on dry cleaning or specialty services.</li>
                        </ul>
                    </div>
               
                </div>
                <h4 class="package-name">Grow</h4>
                <p class="price highlight">$95.00 <br>per month</p>
               <a href="activatePackage.jsp?package=Grow"><button>Activate</button></a>

            </div>
            <div class="package-item">
                <div class="image-wrapper">
                    <div class="container para-package">
                        
                        
                        <ul>
                            <li>10000 Orders per month</li>
                            <li>top-tier garment care and personalized service.</li>
                            <li>premium detergents,softeners,garment care products.</li>
                            <li>Concierge-style service with laundry specialists</li>
                            <li>Customizable billing options</li>
                            <li>iOS & Android app for customers</li>
                            <li>24/7 support(Email)</li>
                            <li>invoicing for business clients.</li>
                        </ul>
                    </div>
                    
                </div>
                <h4 class="package-name">Grow+</h4>
                <p class="price highlight">$325.00 <br>per month</p>
                <a href="activatePackage.jsp?package=Grow+"><button>Activate</button></a>

            </div>
        </div>
    </section>
</div>
<footer>
    <div class="footer">
        <div class="footer-container">
            <div class="row">
                <div class="col">
                    <div class="col1">
                     <div class="single_footer">
                        <h4>Contact Us</h4>
                        <ul>
                            <li>+159-23467890</li>
                            <li>drocelle@gmail.com</li>
                            <li>50 Oakland Ave,Florida, 32104</li>
                            <li>United States Of America</li>
                        </ul>
                    </div>
                    </div>
                    
                </div>
                <div class="col">
                    <div class="single_footer single_footer_address">
                        <h4>Services</h4>
                        <ul>
                            <li><a href="package.jsp">Commercial Laundry Service</a></li>
                            <li><a href="#">Self Laundry Services</a></li>
                            <li><a href="#">PickUp & Delivery services</a></li>
                        
                        </ul>
                    </div>
                </div>
                <div class="col">
                <div class= "col2">
                 <div class="single_footer single_footer_address">
                        <h4>Subscribe today</h4>
                        <div class="signup_form">
                            <form action="#" class="subscribe">
                                <input type="text" class="subscribe__input" placeholder="Enter Email Address"><br>
                                
                            </form>
                     <a href="#"><button class="subscribe-button">Subscribe</button></a>
                        </div>
                    </div>
                    <div class="social_profile">
                       <ul>
		                            <li><a href="#"><i class="uil uil-facebook-f"></i></a></li>
		                            <li><a href="#"><i class="uil uil-instagram"></i></a></li>
		                            <li><a href="#"><i class="uil uil-twitter"></i></a></li>
		                            
		                        </ul>
					    </div>
					    
                
                </div>
                   
                            
                       
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="">
                    <p class="copyright">Joy Of Bright Clothes &copy; Drocelle <a href="#">www.drocelle.com</a></p>
                </div>
            </div>
        </div>
    </footer>
    
</body>
</html>