<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="cssnew/mainn.css">
<link rel="stylesheet" href="/cssnew/mainn.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Receipt Page</title>
</head>
<body>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>

<c:forEach var="i" items="${receipt}">


<%-- 
<c:out value="${i.pg_id}"></c:out>
<c:out value="${i.pg_name}"></c:out>
<c:out value="${i.pg_share}"></c:out>
<c:out value="${i.pg_price}"></c:out>
<c:out value="${i.pg_address}"></c:out>


<c:out value="${i.book_name}"></c:out>
<c:out value="${i.book_mobile}"></c:out>
<c:out value="${i.book_date}"></c:out>
<br>
advance amount:"${list2}"

 --%>
 
 
 
 <div class="container">
 	
 	 <div class="row">
 	 
 	 		 <div class="col-md-1">
 	 		 	<!-- just for more gap -->
 			 </div>
 			 
 			
 			 <div class="col-md-10" style="background-image: url(image/bgimage.jpg)"> <!-- this path is not click  -->
 			 
 			 		<br><br>
 			 		
 				<center> <img src="image/thank-youjpg.jpg" width="90%" height="20%"> </center>
 				
 				<center>
 					<h3 style="color:#2AB7C2">PG Booking Details</h3>
	 					<p style="color:FF3333">
		 					<b>
			 					PG ID : <c:out value="${i.pg_id}"></c:out> <br>
								PG Name : <c:out value="${i.pg_name}"></c:out> <br>
								PG Sharing  : <c:out value="${i.pg_share}"></c:out> <br>
								PG Price : <c:out value="${i.pg_price}"></c:out> <br>
								PG Address "<c:out value="${i.pg_address}"></c:out> <br>
							<b>
						</p>
 				</center>
 				
 				<br>
 				<hr><hr>
 				<br>
 				
 				<center>
 					<h3 style="color:#2AB7C2">Stayer's Booking Details</h3>
	 					<p style="color:">
		 					<b>
		 						Name : <c:out value="${i.book_name}"></c:out> <br>
								Mobile : <c:out value="${i.book_mobile}"></c:out> <br>
								Date Of Check In : <c:out value="${i.book_date}"></c:out> <br> 
							</b>
						</p>
 				</center>
 				
 				<br><br>
 				
 
 			</div>
 		
 			<div class="col-md-1">
 				<!-- just for more gap -->
 			 </div>
 
 	 </div>
 	
 
 </div>
 
 
 
 
 
 
 
 
 
</c:forEach>
<div>

<center>
	<button type="button" class="btn btn-info" onclick="myFunction()">Print This Receipt</button>
</center>

<script>
function myFunction() {
    window.print();
}
</script>


</div>
</body>
</html>