<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="StyleNN.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <style>
    body{
    background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif;
    font-family: Poppins;
    background-size: 100%;
    background-attachment: fixed;
    background-image:  linear-gradient(to bottom, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url('images/machine3.jpg');
    
    }
    .AboutPara{
    font-family: Poppins;
    margin-left: 40px;
    line-space:2px;
    
    }
    
    .titlep{
    margin-left: 40px;
    }
    
    .footer{
       margin-top : 500px;
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
      <div class="content"><br><br><br><br><br>
	                    <h2 class="titlep">About Us</h2>
	                    <div class ="AboutPara">
	                    <p>
	                        <b>We pride ourselves on the high quality, professional<br>and modern laundry and dry cleaning technology<br>We utilize to meet the demands of the latest textiles and linen.<br>
	                            We use reputed machines from Europe and the United States<br> and include brands names such as UNICA, Unimac and <br>Girbau for washers, Unimac and Huebsch for dryers,<br>  and Forenta and Kannegiesser for ironers and pressers.<br> We strive for perfection, which is why we use superior technology<br> to provide the best customer experience possible.         </b> 
	                    </p>
	                    </div>
	                    <!--  Quality Cleaning Service. You Leave it we clean it.<br>
	                           Elevate,Exhilarate,Emanate Cleanliness! From Wash to Wow! Clothes.<br> Ever Episode Deserves Epic Clothes! Freshness In Every Fiber.<br> Washing with care, For Clothes you love to wear.<br>-->
	                    
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
    
         </div>

</body>
</html>