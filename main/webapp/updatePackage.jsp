<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>UpdatePackage</title>
    <link rel="stylesheet" href="stylePActive.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <style> 
    button[type="submit"] {
    padding: 10px 40px;
    border: none;
    outline: none;
    background-color: orangered;
    color: white;
    cursor: pointer;
    border-radius: 25px;
    font-size: 20px;
    margin-left: 210px;
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
     <%
     	String companyName = request.getParameter("companyName");
     	String packageName = request.getParameter("packageName");
    	String duration = request.getParameter("duration");
    	String price = request.getParameter("price");
     	
     %>
        
        <form action="update" method="post" class ="PackageActivation-form" onsubmit="showUpdateSuccessMessage()" >
            <fieldset class="PackageActivationField">
                <legend id="PackageActivationLegend">Package Upgrade</legend>
                
                 <label for="name">Company Name:</label>
                <input type="text" id="name" name="name" value="<%=companyName%>" readonly><br><br>
                
               <label for="package_name">Package Name:</label>
               <!--<input type="text" id="package" name="package" readonly><br><br>-->
                <select name ="package" id="package" value="<%=packageName%>">
                            <option value = "Lite">Lite</option>
                            <option value = "Pro">Pro</option>
                            <option value = "Grow">Grow</option>
                            <option value = "Grow+">Grow+</option>
                </select><br><br>
              
                   <label for="duration">Duration (in months):</label>
                   <input type="number" id="duration" name="duration" required min="1"  value="<%=duration%>" required><br><br>
              
             
                 <!-- <label for="price">Total Price:</label>
                <input type="text" id="price" name="price" required readonly><br><br>-->
                <input type="button" value="Price" id="price" onclick="validateAndCalculatePrice()"><br><br>
                        
                <!-- Display total price in a new box below the form -->
                <div id="totalPriceBox" name="price" value="<%=price%>"></div>
               <button type ="submit">Upgrade Package</button>
                <!-- <input type="submit" onclick="updateData()" value="Upgrade Package"> -->
    </fieldset>
    </form>

    </div>
    
     <script src="javaS.js"></script>
    <script>
    function showUpdateSuccessMessage() {
        alert("Package updated successfully!");
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