<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>PackageDetails</title>
    <link rel="stylesheet" href="stylePActive.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <style>
    input[type="submit"] {
    padding: 10px 40px;
    border: none;
    outline: none;
    background-color: orangered;
    color: white;
    cursor: pointer;
    border-radius: 15px;
    font-size: 20px;
    margin-left: 100px;
    }
    input[type="button"] {
    padding: 10px 40px;
    border: none;
    outline: none;
    background-color: orangered;
    color: white;
    cursor: pointer;
    border-radius: 15px;
    font-size: 20px;
    margin-left: 100px;
    }
    .nav-items {
    list-style-type: none;
    margin: 0;
    padding: 0;
   font-size:18px;
}
    </style> 
    
    
    
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
    
    <div class="package-body">
    
	    <form action="read" method="post" class ="ShowDetails">
	    
	    			<!-- <label for="compName">Enter Your Company Name </label>
	                <input type="text" id="compName" name="compName" required ><br><br> value=companyName -->
	             <label for="name">Enter Your Company Name:</label>
                <input type="text" id="name" name="name" ><br><br>
	                
	                <input type="submit" value="Show Package Details">
	    </form>
	
		<c:forEach var="pckg" items="${showDetails}"><!--servlete eke array name eke-->
		    
		<c:set var="id"               value="${pckg.id}"/>
		<c:set var="packageName"      value="${pckg.packageName}"/>
		<c:set var="companyName"      value="${pckg.companyName}"/>
		<c:set var="cEmail"           value="${pckg.cEmail}"/>
		<c:set var="phoneNo"          value="${pckg.phoneNo}"/>
		<c:set var="noOfStore"        value="${pckg.noOfStore}"/>
		<c:set var="duration"         value="${pckg.duration}"/>
		<c:set var="cutormization"    value="${pckg.cutormization}"/>
		<c:set var="price"            value="${pckg.price}"/> 
		
		
		<br><br><br>
		<form action="delete" method="post" class ="PackageActivation-form" onsubmit="showDeleteMessage()">
            <fieldset class="PackageActivationField">
            	<label for="package_id">Package ID</label>
               	<input type="text" id="package_id" name="package_id" value="${pckg.id}" readonly><br><br>
               
               	<label for="package_name">Package Name:</label>
               	<input type="text" id="package" name="package" value="${pckg.packageName}" readonly ><br><br>
                
                <label for="name">Company Name:</label>
                <input type="text" id="name" name="companyName" value="${pckg.companyName}" readonly><br><br>

                

                <label for="email">Company Email:</label>
                <input type = "email" name = "email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" value="${pckg.cEmail}" readonly><br><br>
                <!--pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"-->
                    
            	<label for="phone">Phone Number:</label>
            	<input type = "phone" name = "phone" value="${pckg.phoneNo}" readonly ><br><br>

            	<label for="store_no">Number Of Stores:</label>
                <input type = "text" name = "store_no" value="${pckg.noOfStore}" readonly ><br><br>

                 <label for="duration">Duration (in months):</label>
                 <input type="number" id="duration" name="duration" value="${pckg.duration}" readonly><br><br>
                
                <label for="checkbox">Customization</label>
                <input type="text" id="textInput" name="cutormization" value="${pckg.cutormization}" readonly>
                
                 <label for="price">Total Price</label>
                <input type="text" id="price" name="price" value="${pckg.price}" readonly><br><br>
                
                <c:url value="updatePackage.jsp" var="dataUpdate">
                <c:param name="companyName" value="${companyName}"></c:param>
                <c:param name="package" value="${packageName}"></c:param>
                <c:param name="duration" value="${duration}"></c:param>
                <c:param name="price" value="${price}"></c:param>
                </c:url>
                
                <a href="${dataUpdate}"><input type="button" value="Update"></a>
                <input type="submit" value="Delete">
                
    </fieldset>
    </form>
		
</c:forEach>	
    </div>
    <script>
    function showDeleteMessage() {
        alert("Record deleted successfully!");
    }
    
    </script>
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