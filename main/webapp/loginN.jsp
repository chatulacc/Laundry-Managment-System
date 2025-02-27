<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">

</head>

<body>
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
    <div class="space-under-header"></div>
<center>
    <div class="body-content">
        

        <div class="login-container">
            <h2>Login</h2>
            <form action="login" method="post">
                <input class="login-input" type="text" placeholder="Username" name="username" required><br>
                <input class="login-input" type="password" placeholder="Password" name="password" required><br>
                <button type="submit" class="login-btn">Login</button>
            </form>

            <div class="login-footer">
                <p>Don't have an account? <a href="CusProfile.jsp">Sign Up</a></p>
            </div>

        </div>

</center>
        
<br>
<br>

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
                                    <li>50 Oakland Ave, Florida, 32104</li>
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
                        <div class="col2">
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
                <div class="row">
                    <div class="">
                        <p class="copyright">Joy Of Bright Clothes &copy; Drocelle <a href="#">www.drocelle.com</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>
