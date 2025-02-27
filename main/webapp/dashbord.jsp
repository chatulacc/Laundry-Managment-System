<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="styleH.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <style>
    .container{
	margin-top:90px;
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
    <div class="container">
        <div class="header">
            <h1>User Dashboard</h1>
        </div>
        <div class="user-info">
            <h2>User Information</h2>
            <p><strong>Name:</strong> John Doe</p>
            <p><strong>Email:</strong> john.doe@example.com</p>
            <p><strong>Location:</strong> New York, USA</p>
        </div>
        <div class="user-actions">
            <div class="user-action">
                <h3>Profile</h3>
                <p>Edit Profile</p>
            </div>
            <div class="user-action">
                <h3>Settings</h3>
                <p>Account Settings</p>
            </div>
            <div class="user-action">
                <h3>Logout</h3>
                <p>Logout of Account</p>
            </div>
        </div>
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
                                <li><a href="pickupanddelivery.jsp">PickUp & Delivery services</a></li>
                                <li><a href="ManageComplaint.jsp">Feedbacks & Reviews</a></li>
                            
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
    
    