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
<title>Login</title>
</head>
<body>

<center>

<br>
<jsp:include page="header.jsp" /> 
<br>



<div class="container">

<h1 class="display-1"> <i>Payment Gateway -- Powered By SBI </i>  </h1>
<br><br>

	<div class="row">
	
	<!--  Payment ways name -->
		<div class="col-md-3">
					
			<div class="list-group">
			  <button type="button" class="list-group-item list-group-item-action active">Credit Card</button>
			  <button type="button" class="list-group-item list-group-item-action">Debit Card</button>
			  <button type="button" class="list-group-item list-group-item-action">Card With Pin</button>
			  <button type="button" class="list-group-item list-group-item-action" disabled>UPI Payment</button>
			  <button type="button" class="list-group-item list-group-item-action" >Net Banking</button>
			</div>
				
		</div>
		
		
	<!-- Details   -->
		<div class="col-md-9">
		
			<form action="payment" class="form-group" method="post">
			
					<input type="hidden" name="pg_id" value="${id}">
					<input type="hidden" name="book_adhar" value="${adhar}">
				
					<input  class="form-control" type="text" name="" placeholder="Enter Card Number"  maxlength="16"  />
					<br>
					<input  class="form-control" type="text" name="" placeholder="Enter Card Name"  maxlength="20"  />		
					<br>								
					<input  class="form-control" type="month" name="" placeholder="Enter Expiry Date"   />
					<br>								
					<input  class="form-control" type="password" name="" placeholder="Enter Card CCV"  maxlength="3"  />
					<br>				
					<input class="btn btn-lg btn-primary" type="submit" value="Pay">
			</form>
				
		</div>
	
	
	</div>

</div>

<!-- Footer -->
	<br>
	<jsp:include page="footer.jsp" /> 
	<br>
<!-- Footer -->

</center>

</body>
</html>