<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Package Activation</title>
    <link rel="stylesheet" href="stylePActive.css">
    
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
      <style>
     .nav-items{
    font-size:18px;
    text-decoration:none ;
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
    
     
        <!--<label for="duration">Duration (in months):</label>
                <input type="number" id="duration" name="duration" required oninput="calculateTotalPrice()"><br><br>
             <label for="price">Total Price:</label>
                <input type="text" id="price" name="price" required readonly><br><br>-->
    
    <div class="package-body">
        
        <form action="insert" method="post" class ="PackageActivation-form" onsubmit="showSuccessMessage()">
            <fieldset class="PackageActivationField">
                <legend id="PackageActivationLegend">Package Activation</legend>
               <label for="package_name">Package Name:</label>
               <input type="text" id="package" name="package" readonly><br><br>
                
                <b><h3 class="companyDetails">Your Company Details</h3></b><br>
                <label for="name">Company Name:</label>
                <input type="text" id="name" name="name" required><br><br>

                <label for="address">Company Address:</label>
                <textarea name="address" rows="4" cols="50"  required></textarea><br><br>
            <!--<input type="text" id="company_address" name="package_name" required><br><br>--> 

                <label for="email">Company Email:</label>
                <input type = "email" name = "email" placeholder = "abc@gmail.com" pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required><br><br>
                <!--pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"-->
                    
            <label for="phone">Phone Number:</label>
            <input type = "phone" name = "phone" placeholder = "0765635234" pattern="[0-9]{10}" required><br><br>

            <label for="store_no">Number Of Stores:</label>
                        <select name ="store_no">
                            <option value = "none">No physical stores</option>
                            <option value = "1">1</option>
                            <option value = "2">2</option>
                            <option value = "3">3</option>
                        </select><br><br>


                        <label for="duration">Duration (in months):</label>
                        <input type="number" id="duration" name="duration" required min="1"  required><br><br>
                
                
                
                <label for="checkbox">Custormization</label>
                <input type="checkbox" id="checkbox"><br><br>

                <div id="inputContainer" class="hidden">
                    <label for="textInput">Write your needs</label>
                    <input type="text" id="textInput" name="cutormization">
                </div>
                
                 <!-- <label for="price">Total Price:</label>
                <input type="text" id="price" name="price" required readonly><br><br>-->
                <input type="button" value="Price" id="price" onclick="validateAndCalculatePrice()"><br><br>
                        
                
                <div id="totalPriceBox"></div>
                
                <input type="submit" value="Activate Package" onclick="return validateAddress()">
    </fieldset>
    </form>

    </div>
    
    <script>
    
        function getQueryParam(param) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(param);
    }
        
        // Retrieve the package name from the URL
        const packageName = getQueryParam('package');
        
        // Fill the package name into the form field
        document.getElementById('package').value = packageName;
        
        function handleCustomizationCheckbox() {
            var checkbox = document.getElementById("checkbox");
            var inputContainer = document.getElementById("inputContainer");
            
            // Check if the checkbox is checked
            if (checkbox.checked) {
                // Remove the 'hidden' class to show the input container
                inputContainer.classList.remove("hidden");
            } else {
                // Add the 'hidden' class to hide the input container
                inputContainer.classList.add("hidden");
            }
        }

        // Attach event listener to the checkbox
        document.getElementById("checkbox").addEventListener("click", handleCustomizationCheckbox);
        
        
        function validateAddress() {
            var addressInput = document.getElementsByName("address")[0].value;
            var specialChars = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/;

            if (specialChars.test(addressInput)) {
                alert("Please enter a valid address without special characters.");
                return false;
            }

            return true;
        }
    </script>
    <script src="javaS.js"></script>
    	
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






        
   