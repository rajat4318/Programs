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

<title>List Of PG</title>

	<style>
          .setting{
              background-color:#f2f2f2;
              padding-left: 3%;
              margin-left: 3%;
              margin-right: 3%;
              padding-right: 3%;
              
          }
   
</style>

<style type="text/css">

<style>
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("image/dark.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>





</head>
<body class="bg">

<!-- 	
<video autoplay muted loop id="myVideo">
  <source src="image/LoginPage.mp4" type="video/mp4">
</video> 
-->


<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>



<br>
<jsp:include page="header.jsp" /> 
<br>

<%-- 
<c:forEach var="i" items="${pglist}">
<form action="PgMoreDetails">

<c:out value="${i.pg_name}"></c:out>
<c:out value="${i.pg_type}"></c:out>
<c:out value="${i.pg_share}"></c:out>
<c:out value="${i.pg_price}"></c:out>
<c:out value="${i.pg_address}"></c:out>
<img src="/Online_PGBooking_UI/WebContent/image/<c:out value="${i.pg_image}"></c:out>">

<input type="hidden" name="pg_name" value="<c:out value="${i.pg_name}"></c:out>">
<input type="submit" name="moredetails" value="moredetails">
<input type="submit" name="moredetails" value="booknow">
</br>
</form>
</c:forEach> --%>


<center>

<h1 class="display-1"> <i> <font style="color:white">List Of PG In Your Area !!! </font></i></h1>




<c:forEach var="i" items="${pglist}">
<form action="PgMoreDetails">	
	<br>
		
  <!--  div for color & space -->
    <div class="setting">


        <div class="container">

        	<div class="row">



<!--  This div for image  -->
        <div class="col-md-4">
          <!-- <img src="download.jpg" alt="pg_image" class="img-thumbnail"> -->
           <%-- <img src="/Online_PGBooking_UI/WebContent/image/<c:out value="${i.pg_image}"></c:out>"> --%>
         
         
           
        <%--  <img src="<%= response.encodeURL(request.getContextPath())+"/WebContent/image/" %>${i.pg_image1}" >
           <img alt="" src="<c:url value='file:///C:/Users/Shanti/Desktop/Online_PGBooking_UI/WebContent/image/${i.pg_image1}'/>">
           <img src="<%=request.getContextPath()%>/WebContent/image/${i.pg_image1}" width="200 px" height="200 px">
           <img alt="" src="file:///C:/Users/Shanti/Desktop/Online_PGBooking_UI/WebContent/image/${i.pg_image1}"  width="400 px" height="400 px" alt="abcd">
           <img alt="" src="image/${i.pg_image1}"  width="400 px" height="400 px" alt="abcdr">
          <img alt="" src="/image/${i.pg_image1}"  width="400" height="400" alt="abcdt">
           <img width="400" height="400" alt="abcd" src="file:///C:/Users/Shanti/Desktop/Online_PGBooking_UI/WebContent/image/${i.pg_image1}" />
          <img src ="http://localhost:9090/Online_PGBooking_UI/image/${i.pg_image1}">
          <tools:img path="/image/${i.pg_image1}"/> --%>
         <%--  <embed src="/image/${i.pg_image1}" content="image/jpeg"></embed> --%>
          <!-- <iframe src="image/OM.jpg"></iframe> -->
           <img src="image/${i.pg_image1}" width="200 px" height="200 px">
         <%--   <c:out value="${i.pg_image1}"></c:out>  --%>
         
        </div>



<!-- This div is for your other pg related properties -->
        <div class="col-md-8">
            <table style="height: 100px;">
                <tbody>
                <input type="hidden" name="pg_id" value="<c:out value="${i.pg_id}"></c:out>">
                <%--  <tr><td class="align-baseline"> <h3> <c:out value="${i.pg_id}"></c:out> </h3> </td> </tr> --%>
                      <tr><td class="align-baseline"> <h3> <i> <c:out value="${i.pg_name}"></c:out> </i> </h3> </td> </tr>
                      <tr><td class="align-top"> <b>PG Type -</b> <c:out value="${i.pg_type}"></c:out> </td> <span margin-right:1.25em></span> <td class="align-middle"> <b>Sharing -</b> <c:out value="${i.pg_share}"></c:out></td></tr>
                      <tr><td class="align-bottom"> <b>Address -</b> <c:out value="${i.pg_address}"></c:out> </td></tr>
                      <tr><td class="align-text-top"><b>Price &#x20B9;</b> - <c:out value="${i.pg_price}"></c:out> </td></tr>
                      <!-- <tr><td class="align-text-bottom">Facility - </td></tr> --> 
                      <tr><td><input type="submit" class="btn btn-outline-warning" style="background-color: #b32d00;color:#fff" name="moredetails" value="Book Now">
					 <input  type="submit"  class="btn btn-outline-primary"  style="background-color:  #2d5986; color:#fff;"  name="moredetails"  value="More Details"></td></tr>
						<!-- <input   class="btn btn-secondary btn-lg" type="button" name="moredetails" value="Book Now"> 
						onclick="window.location='userbook.jsp'"
						-->
                </tbody>
            </table>
        </div>


  </div>

  </div>

</div>

</form>
</c:forEach>



<!-- Footer -->
	<br>
	<jsp:include page="footer.jsp" /> 
	<br>
<!-- Footer -->

</center>



</body>
</html>