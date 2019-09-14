<%@page import="com.pg.book.UserRegister"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>User Profile Page</title>
</head>
<body>

<center>

<br>
<jsp:include page="header.jsp" /> 
<br>



	<div class="container">
		<div class="row">
			
			<div class="col-md-2">
				<!-- just for gap/space  -->
			</div>
			
	<!-- ########################## ALL CODE GOES HERE################################3  -->
			
				<div class="col-md-8">
						
				<!--  Buttons to Get Type of Users  -->	
					<div class="type_btn_reg_page">
						<h3>Select Your Type </h3>
						<button type="button" class="btn btn-success" id="btn_pg_toggle">User Booking History</button>
						<button type="button" class="btn btn-success" id="btn_user_toggle">User Profile </button>
					</div>	
					
<!-- 								

		########################## ALL CODE GOES HERE################################3 

		 -->	
<!-- Right Side div for USER REGISTRATION  -->	

	<div class="div2_user_hide"> <!-- JQuery class to hide  -->
	
	
							<h3>USERS Profile</h3><br>
							
				<form action="form_user_update" method="post">
				
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Name</label>
					    <input type="text" class="form-control" name="reg_user_name" aria-describedby="emailHelp" value="${al.name}">
					   	<!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Enter Your Email</label>
					    <input type="tel" class="form-control" name="reg_user_email"  aria-describedby="emailHelp" placeholder="Enter Your Email" readonly>
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
						  		<input type="submit" value="Update" class="btn btn-primary btn-lg btn-block">
						  </div>
					  
		
				</form>
			
			</div> 
		
		</div>
	
<!-- ===========================================================================================================  -->	
		
		<!-- Right Side div for PG REGISTRATION  -->
	<div class="div1_pg_hide"> <!-- JQuery class to hide  -->
			
					<br><br><br>
					
				
							
				<form action="" method="post">
					<br><br>
					<h3>Booking History</h3>
					<h3> Here Booking History Has to be shown.</h3>
					 
				</form>
			
			</div> 
		
			
	</div>		

				</div>


			<div class="col-md-2">
				<!-- just for gap/space  -->
			</div>
			
		</div>
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



</center>


</body>
</html>