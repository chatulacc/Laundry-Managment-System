<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="ManageComplaint.css">
<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
<title>Feedback & Reviews</title>
<style>
footer{
margin-top: 300px;
}
.nav-items {
   
   font-size:18px;
}
</style>

</head>
<body>
<div class="background-image"></div>
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
    <br><br><br><br><br><br>
    


<div>
    <form action="insertR" method="post" class="complaintform">
        <legend><h2>Complaint Management Form</h2></legend>
      <label for="name">Name:</label><br>
      <input type="text" id="name" name="name"><br>
    
      <label for="order_id">Order ID:</label><br>
      <input type="text" id="order_id" name="orderid"><br>
    
      <label for="complaint">Complaint:</label><br>
      <textarea id="complaint" name="complaint" rows="4" cols="50"></textarea><br>
    
      <label for="contact_number">Contact Number:</label><br>
      <input type="text" id="contact_number" name="contactnumber"><br>
    
      <label for="additional_field">Notes:</label><br>
      <input type="text" id="additional_field" name="additionalfield"><br>
    
      <input type="submit" value="Submit">
    </form> 
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
		                         <!-- <input type="text" class="subscribe__input" placeholder="Enter Email Address"><br> -->
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