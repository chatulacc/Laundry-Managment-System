<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Webpage Design</title>
<link rel="stylesheet" href="Pickupanddelivery.css">
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
    <br><br><br>
   
     
    
    <section>
    <%
        	String id = request.getParameter("id");
        	String name =request.getParameter("name");
        	String address =request.getParameter("address");
        	String no =request.getParameter("no");
        	String date =request.getParameter("date");
        	String time =request.getParameter("time");
        	String urgency =request.getParameter("urgency");
        	String quantity =request.getParameter("quantity");
        	String amount =request.getParameter("amount");
        	
        	
        %>
        
    
<form class="pickupform" action = "placeOrderupdate" method="post">
    <div class="formtopic">
    
    <h3>Update your details</h3></div>
    Name:
    <input type="text"  name = "p_name"  value="<%= name %>" readonly >
    Address:
    <input type="text"  name = "p_address" value="<%= address%> "  >
    Contact Number:
    <input type="tel"  name = "p_no" value="<%= no %>"  >
    
    <div class="formtopic"><h3>Pickup Details</h3></div>
    PickupDate:
    <input type="text"  name = "p_date"  value="<%= date %>"  >
    PickupTime:
    <input type="text"  name = "p_time" value="<%= time %>"  >
    <div class="formtopic">
    
      <h3>Urgency</h3>
  </div>
  
      <input type="text"  name = "p_urgency" value="<%= urgency %>" >
  <br><br><div class="formtopic">
    <h3>Price Calculating</h3>
</div>

<div class="quantity-container">
Quantity:
<input type="number" id="quantityInput" name = "p_quantity" value="<%= quantity %>"><br><br>

</div></div>
<br><br>
Total Amount:
<input type="text" id="totalAmountBox" name = "p_amount"  value="<%= amount %>" ><br><br>


    <button type="submit">Save Changes</button>
    

</form> 
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