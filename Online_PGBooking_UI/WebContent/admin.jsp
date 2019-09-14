<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Admin Page</title>
</head>
<body>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>

<center>
<div class="Container">
<dir class="row">
<div class="">


			<br>

				<form action="pgdetail" method="post">
					<!-- <input style="border: none; background: none; margin-top: 14px; color: #807b73;" type="submit" value="PG Details" /> -->
				<input class="btn btn-success btn-lg" type="submit" value="PG Details" />
				</form>
				
					<br>
					
				<form action="userdetail" method="post">
					<input class="btn btn-success btn-lg" type="submit" value="User Details" />
				</form>
			
			<br>
			<br>
			
			<h2>PG Detail</h2>
			
<table class="table table-striped">
<tr>
<th>owner name</th>
<th>Pgname</th>
<th>Mobile Number</th>
<th>Email Id</th>
<th>PassWord</th>
<th>City</th>
<th>State</th>
<th>Remove</th>
</tr>
<c:forEach var="i" items="${pgowner}">

<tr>

<td><c:out value="${i.owner_name}"></c:out></td>
<td><c:out value="${i.owner_pgname}"></c:out></td>
<td><c:out value="${i.owner_mobile}"></c:out></td>
<td><c:out value="${i.owner_email}"></c:out></td>
<td><c:out value="${i.owner_pass}"></c:out></td>
<td><c:out value="${i.owner_city}"></c:out></td>
<td><c:out value="${i.owner_state}"></c:out></td>
<td>
<form action="delete">
	<input  type="hidden" name="email" value="<c:out value="${i.owner_email}"></c:out>"> 
	<input class="btn btn-danger" type="submit" name="delete" value="Remove"> 
</form>

<tr>

<br>

</c:forEach>
</table>	

<!--  ================================================================================================  -->		
			<h3>Customer Detail</h3>
			
	<!-- userdetails  -->
	
				
<table class="table table-striped">
<tr>
<th>Name</th>
<th>Gender</th>
<th>Mobile Number</th>
<th>Email Id</th>
<th>PassWord</th>
<th>City</th>
<th>State</th>
<th>Aadhaar</th>
<th>Remove</th>
</tr>
<c:forEach var="i" items="${userdetails}">

<tr>
<!-- //name,email,mobile,state,city,gender,password,adhar;  -->
<td><c:out value="${i.name}"></c:out></td>
<td><c:out value="${i.gender}"></c:out></td>
<td><c:out value="${i.mobile}"></c:out></td>
<td><c:out value="${i.email}"></c:out></td>
<td><c:out value="${i.password}"></c:out></td>
<td><c:out value="${i.city}"></c:out></td>
<td><c:out value="${i.state}"></c:out></td>
<td><c:out value="${i.adhar}"></c:out></td>
<td>
<form action="delet">
	<input  type="hidden" name="email" value="<c:out value="${i.email}"></c:out>"> 
	<input class="btn btn-danger" type="submit" name="delete" value="Remove"> 
</form>

<tr>

<br>

</c:forEach>
	
			
			
</div>
</dir>
</div>
</center>
</body>
</html>