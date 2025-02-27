<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Webpage Design</title>
<link rel="stylesheet" href="ManageComplaint.css">

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
   
     
     <br><br><br><br><br>
    
    <section>
    
    
     <form  action="readR" method="post" class="complaintform">>
    <div class="formtopic">
    
    <legend><h3>Enter your orderid:</h3></legend>
    <input type="text"  name = "orderid" placeholder ="order id  "required >
    <input type="submit"  name="viewdetails" value="viewDetails"></a>
    
    </div>
    </form>
    
    <br><br><br>
    <c:forEach var="cus" items="${cusDetails}">
          	
          	<c:set var="name" value="${cus.name}"/>
          	<c:set var="orderid" value="${cus.orderid}"/>
          	<c:set var="complaint" value="${cus.complaint}"/>
          	<c:set var="contactnumber" value="${cus.contactnumber}"/>
          	<c:set var="additionalfield" value="${cus.additionalfield}"/>
          	
          	 
 <form action="deleteR" method="post" class="complaintform">>
    <div class="formtopic">
    
   
     <legend><h2>Complaint Management Form</h2></legend>
     <legend><h4>Name</h4></legend>
    <input type="text"  name = "name"  value="${cus.name}" readonly >
     <legend><h4>OrderId:</h4></legend>
    <input type="text"  name = "orderid"  value="${cus.orderid}"  readonly>
    <legend><h4>Complaint:</h4></legend>
    <input type="text"  name = "complaint" value ="${cus.complaint}" readonly >
    <legend><h4>Contactnumber:</h4></legend>
    <input type="text"  name = "contactnumber"  value="${cus.contactnumber}" readonly >
    <legend><h4>Additionalfield:</h4></legend>
    <input type="text"  name = "additionalfield"  value="${cus.additionalfield}"  readonly>
    
    
   
    
    
    <br><br>
    
    <c:url value="ManageComplaintUpdate.jsp" var="dataUpdate">
          					
          					<c:param name="name" value = "${name}"></c:param>
          					<c:param name="orderid" value = "${orderid}"></c:param>
          					<c:param name="complaint" value = "${complaint}"></c:param>
          					<c:param name="contactnumber" value = "${contactnumber}"></c:param>
          					<c:param name="additionalfield" value = "${additionalfield}"></c:param>
          					
          					
          				</c:url>
          				<br><br>
 <a href="${dataUpdate}"><input type="button" class="button" id="updatesubmit" name="update" value="Update"></a>
                         
                 		<br><br>
    <input type="submit" class="button" id="Deletesubmit" name="Delete" value="Delete"></a>
    

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

</body>
</html>