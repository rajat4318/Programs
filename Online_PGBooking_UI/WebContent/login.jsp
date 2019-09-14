<!-- 

Designed By - Somesh Sah
Date - 02/07/2018
Time - 23:56

Parameters That You Need (Login Page)

-- > For PG Provider 
	-- form action 		-	 "user_login_process"
	-- method 			-	  post
	-- id 				- 	 "formInputPGid" 
	-- password 		- 	 "formInputPGpass"	

-- > For Users
	-- form action 		- 	"pg_login_process"
	-- method 			- 	post
	-- id 				-  	"formInputUSERid" 
	-- password			- 	"formInputUSERpass"

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
  
  <link rel="stylesheet" href="/css/main.css">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="cssnew/mainn.css">
  <link rel="stylesheet" href="/cssnew/mainn.css">
<title>Login</title>


<style>
.login_border{
	margin : 5% ;
	padding : 2%;
	width : 330px;
	height : 370px;
	
	/*background: black;
	text-decoration: none;*/
	background:white;
}

.full_page_center{
	float: center;
	margin: 0%;
	margin-left :25px;
	padding: 0%;
	/*border:  1px solid green;*/
	
}

.type_btn_reg_page{
	margin : 1.5%;
	padding: 1.5%;
}

</style>


<style type="text/css">
/* #myVideo {
    position: fixed;
    right: 0;
    bottom: 0;
    min-width: 100%; 
    min-height: 100%;
} */

<style>
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    /* background-image: url("image/gray_bg.jpg"); */

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}


.loging-block
{
background-color: #f2f2f2;

}

</style>


</head>
<body class="bg">
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<br>
<jsp:include page="header.jsp" /> 
<br>

<hr>



<div class="container loging-block">
<center><h1>Login Page</h1></center>
	<div class="row">
	    
<!--  -Start- Left Side Login Bar - For Users  -->
		
		<div class="col-md-6" >
		
			<center>
				<%
				// used for seesion on payment page
					String msg_error=(String) request.getAttribute("re-Key"); 
					if(msg_error!=null){
						out.print(msg_error); // Login First is printed 
					}
				%>
				<div class="login_border">
					 
					<h3 style="color:#000"><u><strong> User</strong></u></h3><br>
					
					<%!
					
					
					%>
					<form action="user_login_process" method="post">
						  <div class="form-group">
							    <label for="login_id">Enter Your Id</label>
							    <input type="hidden" name="pg_id" value="${id}">
							     <input type="hidden" name="pg_adhar" value="${adhar}">
							    <input type="text" class="form-control" name="formInputUSERid" placeholder="Enter Your Id">
						  </div>
						  <div class="form-group">
							    <label for="login_password">Enter Your Password</label>
							    <input type="password" class="form-control" name="formInputUSERpass" placeholder="Enter Your Password">
						  </div>
						  <div class="form-group">
						  		<input type="submit"  style="background-color:#264d73" value="LogIn" class="btn btn-primary btn-lg btn-block">
						  </div>
					</form>
				</div>
				
		
			
			</center>
		
		</div>
		
<!-- -End- Left Side Login Bar - For Users  -->	



<!-- -Start- Right Side Login Bar - For PG Provider  -->	
		
		<div class="col-md-6">
		
			<center>
				
				<div class="login_border">
					
					<h3 style="color:#000"><u><strong>PG Providers</strong></u></h3><br>
					
					<form action="OwnerLogin" method="post">
						  <div class="form-group"><p>
							    <label for="login_id">Enter Your Id</label>
							    <input type="text" class="form-control" name="owner_email" placeholder="Enter Your Id">
						  </p>
						  </div>
						  <div class="form-group">
							    <label for="login_password">Enter Your Password</label>
							    <input type="password" class="form-control" name="owner_pass" placeholder="Enter Your Password">
						  </div>
						  <div class="form-group">
						  		<input type="submit" style="background-color:#264d73"  value="LogIn" class="btn btn-primary btn-lg btn-block">
						  </div>
					</form>
				</div>
				
			</center>
		
		</div>

<!-- -End- Right Side Login Bar - For PG Provider  -->		
	
	
	</div>

</div>
<hr>
<center>

<!-- 	<a href="registrationforboth.jsp"><h3 class="display-4"> Click Here To Register YourSelf</h3></a>
 -->
 <a href="registrationforboth.jsp"><button type="button" class="btn btn-primary btn-lg btn-block" style="background-color:#264d73"><h4>Click Here To Register YourSelf</h4></button></a>
 </center>
<hr>

<jsp:include page="footer.jsp" /> 
</body>
</html>