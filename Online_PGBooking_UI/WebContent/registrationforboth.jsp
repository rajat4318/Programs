
<!-- 

Designed By - Somesh Sah
Date - 03/07/2018
Time - 02:16

Parameters That You Need (Registration Page)

=========================================================================================================
-- > For PG Provider Registration
	-- form action 		-	 "form_reg_pg"
	-- method 			-	  post
	
	-- name 			-  	"reg_pg_name"
	-- pg name 			-  	"reg_pg_pgname" 
	-- facilities 		-  	"reg_pg_facility"  { it will long comma separeted values -- store in string array}
	-- photo 			-  	"reg_pg_image"
	-- mobile			- 	"reg_pg_mobile"
	-- email			-   "reg_pg_email"
	-- location			-	"reg_pg_location"
	-- city 			-  	"reg_pg_city"
	-- state			-	"reg_pg_state"
	-- address			-	"reg_pg_address"	
	
=========================================================================================================

-- > For Users Registration
	-- form action 		- 	"form_reg_user"
	-- method 			- 	post
	
	-- name 			-  	"reg_user_name" 
	-- mobile			- 	"reg_user_mobile"
	-- email			-   "reg_user_email"
	-- password			-	"reg_user_pass"
	-- re-password		-	"reg_user_pass_agn"
	-- adhar			-	"reg_user_adhar"
=========================================================================================================
 -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PG Registration</title>
</head>
<body>

<br>
<jsp:include page="header.jsp" /> 
<br>

<!-- ===========================================================================================================  -->
		
<!--  Buttons to Get Type of Users  -->	
		<div class="type_btn_reg_page">
			<h3>Select Your Type </h3>
			<button type="button" class="btn" style="background-color:#006699;color:#fff" id="btn_pg_toggle">PG Registration</button>
			<button type="button" class="btn" style="background-color:#006699;color:#fff" id="btn_user_toggle">User Registration</button>
		</div>
<!-- ===========================================================================================================  -->
		
	
	<div class="full_page_center">

		<div class="container">
	
			<div class="row">
		

<!-- ===========================================================================================================  -->


<!-- Right Side div for PG REGISTRATION  -->
	<div class="div1_pg_hide"> <!-- JQuery class to hide  -->
			
			<div class="col-md-6" >  
			
				<h3>PG Registration</h3><br>
							
				<form action="Owner" method="post">
				
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Name</label>
					    <input type="text" class="form-control" name="reg_pg_name" aria-describedby="emailHelp" placeholder="Enter Your Name">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your PG Name</label>
					    <input type="tel" class="form-control" name="reg_pg_pgname" maxlength="50" aria-describedby="emailHelp" placeholder="Enter Your PG Name ">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <!--  <div class="form-group">
					    <label for="exampleInputEmail1">Enter PG Facilities</label>
					    <textarea class="form-control" rows="3" cols="3" name="reg_pg_facility"></textarea>
					   	<small id="emailHelp" class="form-text text-muted">Write all the Facilities comma separated.</small> 
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Image Upload(Front)</label>
					    <input type="file" class="form-control" name="reg_pg_image" aria-describedby="emailHelp" placeholder="Browse Your Image Path">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div> -->
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Mobile</label>
					    <input type="tel" class="form-control" maxlength="10" name="reg_pg_mobile" aria-describedby="emailHelp" placeholder="Enter Your Mobile No.">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Email</label>
					    <input type="email" class="form-control" maxlength="50" name="reg_pg_email" aria-describedby="emailHelp" placeholder="Enter Your Email">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  
					    <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Password</label>
					    <input type="password" class="form-control" name="reg_pg_pass" aria-describedby="emailHelp" placeholder="Enter Your Password">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					 <!--  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Location</label>
					    <input type="email" class="form-control" maxlength="10" name="reg_pg_location" aria-describedby="emailHelp" placeholder="Enter Your Location">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div> -->
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your City</label>
					     <select required name="reg_pg_city" class="form-control">
							<option selected disabled>City Name</option>
							<option>Bangalore</option>
							<option>Pune</option>
							<option>New Delhi</option>
							<option>Mumbai</option>
						</select>
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your State</label>
					   	<input type="text" class="form-control" value="India" name="reg_pg_state" aria-describedby="emailHelp" placeholder="Enter Your State">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					 <!--  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Full Address</label>
					    <textarea class="form-control" rows="3" cols="3" name="reg_pg_address" placeholder="Enter Full Address"></textarea>
					   	<small id="emailHelp" class="form-text text-muted">Write all the Facilities comma separated.</small> 
					  </div>
					   -->
					   <div class="form-group">
						  		<input type="submit" name="ownerRegister" value="RegisterYourSelf" class="btn btn-primary btn-lg btn-block">
						  </div>
					  
		
				</form>
			
			</div> <!-- col-md-8 wala div  -->
			
			<div class="col-md-6">
			
			
			</div>
		
			
	</div>		

<!-- ===========================================================================================================  -->		
	
<!-- Right Side div for USER REGISTRATION  -->	
	<div class="div2_user_hide"> <!-- JQuery class to hide  -->
	

		<h3>Registration For USERS</h3><br>
		
			<div class="col-md-6">  
							
				<form action="form_reg_user" method="post">
				
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Name</label>
					    <input type="text" class="form-control" name="reg_user_name" aria-describedby="emailHelp" placeholder="Enter Your Name">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Email</label>
					    <input type="tel" class="form-control" name="reg_user_email"  aria-describedby="emailHelp" placeholder="Enter Your Email">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Mobile</label>
					    <input type="tel" class="form-control" name="reg_user_mobile" maxlength="10" aria-describedby="emailHelp" placeholder="Enter Your Mobile No.">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your State</label>
					    <input type="text" class="form-control" name="reg_user_state" aria-describedby="emailHelp" placeholder="Enter Your State">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your City</label>
					    <input type="text" class="form-control" name="reg_user_city" aria-describedby="emailHelp" placeholder="Enter Your city" required>
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Select Gender</label><br>
					    <input type="radio"  name="reg_user_gender"  value="male"> Male 
					    <input type="radio"  name="reg_user_gender"  value="Female"> Female
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Password</label>
					    <input type="password" class="form-control" id="pass1" name="reg_user_pass" aria-describedby="emailHelp" placeholder="Enter Your Password">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Confirm Password</label>
					    <input type="password" class="form-control"  name="reg_user_pass_agn" aria-describedby="emailHelp" placeholder="Enter Your Password Again">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div> 
					<!--   <script type="text/javascript">
					  function chek()
					  {
						 var chek1=Document.getElementById("pass").value;
						 var chek2=Document.getElementById("pass1").value;
						 if(chek1==chek2)
							 {
							 alert("password match");
							 }
						 else
							 {

								document.write("wrong pass word");
							 }
						 
					  }
					  
					  </script> -->
					  
					  <!-- <div class="form-group">
					    <label for="exampleInputEmail1">Confirm Password</label>
					    <input type="password" class="form-control" id="pass" name="reg_user_pass_agn" aria-describedby="emailHelp" placeholder="Enter Your Password Again" onkeyup="chek()">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>

					  </div>  -->
					  
					   <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Aadhaar No.</label>
					    <input type="text" class="form-control" name="reg_user_adhar" maxlength="12" aria-describedby="emailHelp" placeholder="Enter Your Aadhaar Card No.">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					   <div class="form-group">
						  		<input type="submit" value="RegisterYourSelf" class="btn btn-primary btn-lg btn-block">
						  </div>
					  
		
				</form>
			
			</div> <!-- col-md-8 wala div  -->
		
		</div>
	
<!-- ===========================================================================================================  -->	
	
	
	</div>  <!--  row end tag -->

</div> <!--  container end tag -->


</div>


<!--  JQuery Code -->

<script type="text/javascript">

$(function(){
		$(".div1_pg_hide").hide(500); // using class name hide div 1
		$(".div2_user_hide").hide(500); // using class name hide div 2
	})
	
	
	$(document).ready(function(){

	$("#btn_user_toggle").click(function(){
		$(".div2_user_hide").show(); // using class name show div 1
		$(".div1_pg_hide").hide(); // using class name hide div 2
	})

	$("#btn_pg_toggle").click(function(){
		$(".div2_user_hide").hide(); // using class name hide div 1
		$(".div1_pg_hide").show(); // using class name show div 2
	})

})



</script>

<!-- Footer -->
	<br>
	<jsp:include page="footer.jsp" /> 
	<br>
<!-- Footer -->

</body>
</html>