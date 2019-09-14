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
	<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<title>Insert title here</title>


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
   

    /* Full height */
    height: 100%; 
      background-color:#f2f2f2;
    
    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.btn-block {
    display: block;
    width: 36%;
}
</style>


</head>
<body class="bg">
<center>

<br>
<jsp:include page="header.jsp" /> 
<br>

<div class="container">
	<div class="row">


		<h1 class="display-1"> <i> <font style="color:black">List Of Area in Your City !!! </font></i> </h1>
		
		<c:forEach var="i" items="${arealist}">
		<br>
		<div class="form-group">
			<form action="pgList">
				<input class="btn btn-outline-secondary btn-lg btn-block" style="display: block;
    width: 36%;" type="submit" name="arealist" value="<c:out value="${i.pg_area}"></c:out>">
			</form>
		</div>
		
		<br>
		</c:forEach>


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