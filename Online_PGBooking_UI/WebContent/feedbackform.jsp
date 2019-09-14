
<!--  

Designed By - Somesh Sah
Date - 03/07/2018
Time - 12:58 


It is a feedback form

	form action = "fb_form_details"
	method = post

	select type value - "fb_sel_ctype"
	text area value - "fb_txtarea_details"
	

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FeedBack Page</title>
</head>
<body>

<br>
<jsp:include page="header.jsp" /> 
<br>

	<div class="container">
	
		<div class="row">
		
			<div class="col-md-8">
			
			
				<form action="fb_form_details" method="post">
					
					<h3>Please Feel Free To Fill -- Will Get Back To You</h3><br>
					
					 <div class="form-group">
					    <label for="exampleFormControlSelect1">Example select</label>
					    <select class="form-control" name="fb_sel_ctype">
					      <option selected disabled>Select One</option>
					      <option>Compliment</option>
					      <option>Suggestion</option>
					      <option>Complain</option>
					      <option>Other</option>
					    </select>
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleFormControlTextarea1">Enter Your Details </label>
					    <textarea class="form-control" name="fb_txtarea_details" rows="4"></textarea>
					  </div>
					  
					  <button type="button" class="btn btn-primary btn-lg btn-block">Submit</button>

				</form>
			
			</div>
		
		</div>

	</div>
	
<br><br>
<jsp:include page="footer.jsp" /> 
<br><br>

</body>
</html>