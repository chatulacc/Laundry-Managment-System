<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Customer</title>
    <link rel="stylesheet" href="CP.css">
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
                        <li><a href=""><i class="link-contact"></i>Sign Up</a></li>
                        <li><a href="login.jsp"><i class="link-login"></i>Login</a></li>
                        <li><a href="dashbord.jsp"><i class="link-profile"></i>Profile</a></li>
                       </ul> 
                        
                        
                    </div>
                </div>
             </div>
           
        </header>
<br>
<br><center>
    <div class="body-content">
        
        <div class="signup-container">

	<%
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<h2>Customer Account Update</h2>

	<form action="loginUpdate" method="post">
		<div class="form-group">
        <label for="customerName">Customer Name:</label>
		<input type="text" name="name" value="<%= name %>"><br>
		</div>
		
		<div class="form-group">
        <label for="address">Address:</label>
		<input type="text" name="address" value="<%= address %>"><br>
		</div>
        <div class="form-group">
        <label for="mobile">Phone:</label>
		<input type="text" name="phone" value="<%= phone %>"><br>
		</div>
        <div class="form-group">
        <label for="mobile">Email:</label>
		<input type="text" name="email" value="<%= email %>"><br>
		</div>
        <div class="form-group">
        <label for="username">Username:</label>
		<input type="text" name="uname" value="<%= username %>" readonly><br>
		</div>
        <div class="form-group">
        <label for="password">Password:</label>
		<input type="password" name="pass" value="<%= password %>"><br><br>
		</div>
	
		<input type="submit" name="submit" value="Update My Data" class="signup-btn">
	</form>
	
	
	</div>

    </div></center>
<br>
<br><br>
<br>
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
                                <li><a href="pickupanddelivery.jsp">PickUp & Delivery services</a></li>
                                <li><a href="ManageComplaint.jsp">Feedbacks & Reviews</a></li>
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