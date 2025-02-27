<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<title>Webpage Design</title>
<link rel="stylesheet" href="Pickupanddelivery.css">
<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
<style>

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
    
    
    <section class="pickup-delivery">
        <div class="pickup-background">
          <h1>How it works in 4 easy steps</h1>
          <div class="steps">
            <div class="step">
              <img src="images/pickupicon1.png" alt="Step 1">
              <p>Step 1: Choose a pickup time</p>
            </div>
            <div class="step">
              <img src="images/pickupicon2.png" alt="Step 2">
              <p>Step 2: Place your order</p>
            </div>
            <div class="step">
              <img src="images/pickupicon3.png" alt="Step 3">
              <p>Step 3: We pick up your laundry</p>
            </div>
            <div class="step">
              <img src="images/pickupicon4.png" alt="Step 4">
              <p>Step 4: Delivery to your doorstep</p>
            </div>
          </div>
        </div>
    <div>
    <button class="pickupbutton">Schedule a Pickup</button>
  </div>
  <form class="pickupform" action = "placeOrderinsert" method="post">
    <div class="formtopic">
    <h3>Fill in your details</h3></div>
    <input type="text" placeholder="Name" name = "name" required>
    <input type="text" placeholder="Address" name = "address" required>
    <input type="tel" placeholder="Contact Number" name = "no" required>
    <div class="formtopic"><h3>Pickup Details</h3></div>
    <input type="date" placeholder="Date" name = "date" required>
    <input type="time" placeholder="Time" name = "time" required>
    <div class="formtopic">
    
      <h3>Urgency</h3>
  </div>
  <select name="urgency" id="urgency">
      <option value="Non-Urgent">Non-Urgent</option>
      <option value="Urgent">Urgent</option>
  </select>
  <br><br><div class="formtopic">
    <h3>Price Calculating</h3>
</div>
<div class="quantity-container">
<input type="number" id="quantityInput" placeholder="Enter Quantity" name = "quantity"><br><br>
<button type="button" onclick="calculateTotal()">Calculate Total</button><br><br></div></div>
<br><br>
<input type="text" id="totalAmountBox" placeholder="The total amount will display here ." name = "amount" readonly><br><br>


    <button type="submit">Submit</button>
</form>
<script src="pickup.js"></script>
</section>

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


</html>