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
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<title>Insert title here</title>

	<style>
          .setting{
              background-color:#f8f9fa;
              padding-left: 3%;
              margin-left: 3%;
              margin-right: 3%;
              padding-right: 3%;
               border-radius: 25px;
          }
          
 
 #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
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
<body  class="bg">
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<center>

<br>
<jsp:include page="header.jsp" /> 
<br>

<h1 class="display-1">More Details About Your Selected PG</h1>


<%-- 

<form action="pgbook">
<c:forEach var="i" items="${fulllist}">

<c:out value="${i.pg_name}"></c:out>  
<c:out value="${i.pg_type}"></c:out>   
<c:out value="${i.pg_avail}"></c:out>	
<c:out value="${i.pg_facility}"></c:out>	
<c:out value="${i.pg_share}"></c:out>	
<c:out value="${i.pg_price}"></c:out>	
<c:out value="${i.pg_address}"></c:out>		
<c:out value="${i.pg_area}"></c:out>
<c:out value="${i.pg_city}"></c:out>
<c:out value="${i.pg_state}"></c:out>
<c:out value="${i.pg_image}"></c:out>
<input type="submit" name="moredetails" value="booknow">
</br>
</form>
</c:forEach>

 --%>
 
 
 <!--  ==================================================================================================  -->
 
<c:forEach var="i" items="${fulllist}">
<form action="PgMoreDetails">	
	<br>
		
  <!--  div for color & space -->
    <div class="setting">


        <div class="container">
        
        
        
        <!-- ========================================== First Layer ===================================================================  -->
        	
        	<hr>
        	<div class="row">
        	
		        <div class="col-md-4">
		        	<b><i>Stay Happy</i></b>
		        </div>
		    
	        	<div class="col-md-4">
	        		<b>PG Id :<b> <c:out value="${i.pg_id}"></c:out>
	        	</div>
	        	
	        	<div class="col-md-4">
	        		<b>Price :</b> &#x20B9; <c:out value="${i.pg_price}"></c:out>
	        	</div>
        	
        	</div>
        	<hr>
        
        
        

        	




<!--  This div for image  -->
<!-- ========Second row === Left Side   -->


        <div class="col-md-4" >
        <br><br>
        
        
        <!-- #############################slider code start########################################## -->
              <img src="image/${i.pg_image1}" alt="First slide" width="250 px" height="300 px">
              
              
              <br>
        <br>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">More Images</button>

<!-- <div id="map" style="width:250px; height:200px"></div>

   <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap"
    async defer></script>     
 -->


<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
    <img src="image/${i.pg_image2}" alt="Second slide" width="400 px" height="400 px">  &nbsp; &nbsp;
    <img src="image/${i.pg_image3}" alt="Third slide" width="400 px" height="400 px">
     
    </div>
  </div>
  
   
   
  
                  
                       
                                        
   
   
  
</div>
 
     <!-- #############################slider code end########################################## -->
        
        
       <%--  
          <!-- <img src="download.jpg" alt="pg_image" class="img-thumbnail"> -->
          <c:out value="${i.pg_image1}"></c:out>
           <c:out value="${i.pg_image2}"></c:out>
            <c:out value="${i.pg_image3}"></c:out>
            
            
            
            <img src="image/${i.pg_image1}" width="200 px" height="200 px">
             --%>
            
     
        </div>



<!--  ============= Second Row Right Side ========================= -->
 <input type="hidden" name="pg_id" value="<c:out value="${i.pg_id}"></c:out>" >
<!-- This div is for your other pg related properties -->
        <div class="col-md-8">
          
          <%--   <table style="height: 100px;">
                <tbody>
                    <input type="hidden" name="pg_id" value="<c:out value="${i.pg_id}"></c:out>" >
                      <tr><td class="align-baseline"> <h5> <c:out value="${i.pg_id}"></c:out></h5> </td> </tr>
          
                      <tr scope="col"><td class="align-baseline"> <h3 class="display-1">  <c:out value="${i.pg_name}"></c:out></h3> </td> </tr>
                      
                      <tr><td class="align-top">PG Type - <c:out value="${i.pg_type}"></c:out> </td> <span margin-right:1.25em></span> <td class="align-middle">Sharing - <c:out value="${i.pg_share}"></c:out> </td></tr>
                      <tr><td class="align-bottom">Address - <c:out value="${i.pg_address}"></c:out> </td></tr>
                      <tr><td class="align-text-top">Price - <c:out value="${i.pg_price}"></c:out> </td></tr>
                      <tr><td class="align-text-bottom">Facility - <c:out value="${i.pg_facility}"></c:out> </td>  </td> <span margin-right:1.25em></span> <td class="align-middle">Avilability - <c:out value="${i.pg_avail}"></c:out> </td></tr>
                      
                      <tr><td> Area - <c:out value="${i.pg_area}"></c:out>,  City - <c:out value="${i.pg_city}"></c:out>  ,  State - <c:out value="${i.pg_state}"></c:out>  , India  </td></tr>
                      
                      <tr><td>
						     <input class="btn btn-secondary btn-lg" type="submit" name="moredetails" value="Book Now">
						                 
                      </td></tr>

                </tbody>
            </table>
            
 --%>      
 <center><h3 class="display-1">  <c:out value="${i.pg_name}"></c:out></h3></center>  
 
   <table class="table">
  <thead>
    <tr>
      <th scope="col">PG Type</th>
      <th scope="col">Sharing</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td> <c:out value="${i.pg_type}"></c:out> </td>
      <td> <c:out value="${i.pg_share}"></c:out> </td>
    </tr>
  </tbody>
</table>    

   <table class="table">
  <thead>
    <tr>
      <th scope="col">Address</th>
<!--       <th scope="col">Sharing</th> -->
    </tr>
  </thead>
  <tbody>
    <tr>
      <td> <c:out value="${i.pg_address}"></c:out> </td>
<%--       <td> <c:out value="${i.pg_share}"></c:out> </td> --%>
    </tr>
  </tbody>
</table>


   <table class="table">
  <thead>
    <tr>
      <th scope="col">Facility </th>
<!--       <th scope="col">Sharing</th> -->
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><c:out value="${i.pg_facility}"></c:out>  </td>
<%--       <td> <c:out value="${i.pg_share}"></c:out> </td> --%>
    </tr>
  </tbody>
</table>

<input class="btn btn-secondary btn-lg btn-block"  type="submit" name="moredetails" value="Book Now">
<br>
                      
						
        </tbody>
        
        
        
            </table>
        
        
<div id="map" style="width:750px; height:250px"></div>

   <script>
   var marker;

   function initMap() {
     var map = new google.maps.Map(document.getElementById('map'), {
       zoom: 13,
       center: {lat: <c:out value="${i.pg_lat}"></c:out>, lng: <c:out value="${i.pg_lag}"></c:out>}
     });

     marker = new google.maps.Marker({
       map: map,
       draggable: true,
       animation: google.maps.Animation.DROP,
       position: {lat: <c:out value="${i.pg_lat}"></c:out>, lng: <c:out value="${i.pg_lag}"></c:out>}
     });
     marker.addListener('click', toggleBounce);
   }

   function toggleBounce() {
     if (marker.getAnimation() !== null) {
       marker.setAnimation(null);
     } else {
       marker.setAnimation(google.maps.Animation.BOUNCE);
     }
   }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD3OC4zHy4TgOhQt_GM3UcBwgoEFELf2Kc&callback=initMap"
    async defer></script>     
        
            
            
        </div>


  </div>

  </div>

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