<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
                       </ul> 
                        
                        
                    </div>
                </div>
             </div>
           
        </header>
    <br><br><br>
   
     
     
    
    <section>
    
    
     <form class="pickupform" action = "placeOrderread" method="post">
    <div class="formtopic">
    
    <h3>Enter your Username:</h3>
    <input type="text"  name = "name" placeholder ="enter your name here "required >
    <button type="submit">Check Details here</button>
    
    </div>
    </form>
    
    
    <c:forEach var="cus" items="${cusDetails}">
          	
          	<c:set var="name" value="${cus.name}"/>
          	<c:set var="address" value="${cus.address}"/>
          	<c:set var="no" value="${cus.no}"/>
          	<c:set var="date" value="${cus.date}"/>
          	<c:set var="time" value="${cus.time}"/>
          	<c:set var="urgency" value="${cus.urgency}"/>
          	<c:set var="quantity" value="${cus.quantity}"/>
          	<c:set var="amount" value="${cus.amount}"/>
          	 
 <form class="pickupform" action = "placeOrderdelete" method="post">
    <div class="formtopic">
    
    <h3>View Details</h3></div>
    Username:
    <input type="text"  name = "name"  value="${cus.name}" readonly >
    Address:
    <input type="text"  name = "address"  value="${cus.address}"  readonly>
    Contact Number:
    <input type="tel"  name = "no" value ="${cus.no}" readonly >
    
    <div class="formtopic"><h3>Pickup Details</h3></div>
    PickupDate:
    <input type="text"  name = "date"  value="${cus.date}"  readonly>
    PickupTime:
    <input type="text"  name = "time" value="${cus.time}"  readonly>
    <div class="formtopic">
    
      <h3>Urgency</h3>
  </div>
  
      <input type="text"  name = "urgency" value="${cus.urgency}" readonly>
  <br><br><div class="formtopic">
    <h3>Price Calculating</h3>
</div>

<div class="quantity-container">
Quantity:
<input type="number" id="quantityInput" name = "quantity" value="${cus.quantity}" readonly><br><br>

</div></div>
<br><br>
Total Amount:
<input type="text" id="totalAmountBox" name = "amount"  value="${cus.amount}" readonly><br><br>


   
    
    
    <br><br>
    
    <c:url value="PickupUpdate.jsp" var="dataUpdate">
          					
          					<c:param name="name" value = "${name}"></c:param>
          					<c:param name="address" value = "${address}"></c:param>
          					<c:param name="no" value = "${no}"></c:param>
          					<c:param name="date" value = "${date}"></c:param>
          					<c:param name="time" value = "${time}"></c:param>
          					<c:param name="urgency" value = "${urgency}"></c:param>
          					<c:param name="quantity" value = "${quantity}"></c:param>
          					<c:param name="amount" value = "${amount}"></c:param>
          					
          				</c:url>
          				<br><br>
                        <a href="${dataUpdate}"><input type="button" class="pickupbutton" id="update_submit" name="update" value="Edit_details here"></a>
                         
                 		<br><br>
    
    <button type="submit">Delete</button>

</form> 


</c:forEach>



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