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
<title>Insert title here</title>
</head>
<body>

<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
 




<center>
 
<br>
<jsp:include page="header.jsp" /> 
<br>

<div class="container">
	<div class="row">
		<div class="col-md-3">

		</div>
		
		<div class="col-md-6">



<br>
<c:forEach var="i" items="${list}">

<h2>PG : "<c:out value="${i.pg_name}"></c:out>"  </h2>
<h5 style="color:red">Total Amount is  <c:out value="${i.pg_price}"></c:out> </h5>

			
				<h3>Detail For Booking PG</h3><br>
				<form action="book_user">
					<input type="hidden" name="pg_id" value="<c:out value="${i.pg_id}"></c:out>" >
					Name
					<p><input class="form-control"  type="text" name="book_name" placeholder="Enter Your Name"></p>
					Mobile
					<p><input class="form-control" type="text" name="book_mobile" placeholder="Enter Your Mobile"></p>
					Email
					<p><input class="form-control" type="text" name="book_email" placeholder="Enter Your Email"></p>
					Check In Date
					<p><input class="form-control" type="date" name="book_date" ></p>
					Aadhaar
				    <p><input class="form-control" type="text" name="book_adhar" placeholder="Enter Your Addhar" maxlength=12></p>
				     Advance Payable Amount : <p><input class="form-control" type="text" name="book_money" value="${list2}" readonly></p>
				    <p><input class="btn btn-secondary btn-lg" type="submit" name="booknow"></p>
				</form>		
</c:forEach>			
					  
					  
		
		</div>
		
		<div class="col-md-3">

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