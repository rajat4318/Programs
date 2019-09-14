<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="cssnew/mainn.css">
<link rel="stylesheet" href="/cssnew/mainn.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

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
   /*  background-image: url("image/bgimages.jpg"); */
   

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    
    background-color:#f2f2f2;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}


.h3{

color:#000;
}




</style>


<!-- <script>
// Get the video
var video = document.getElementById("myVideo");

// Get the button
var btn = document.getElementById("myBtn");

// Pause and play the video, and change the button text
function myFunction() {
    if (video.paused) {
        video.play();
        btn.innerHTML = "Pause";
    } else {
        video.pause();
        btn.innerHTML = "Play";
    }
}
</script> -->

</head>


<body  class="bg">

<!-- 	
<video autoplay muted loop id="myVideo">
  <source src="image/LoginPage.mp4" type="video/mp4">
</video> 
-->

	<br>
	<jsp:include page="header.jsp" />
	<br>

	<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
	<div class="container">
    
    
    
    <div class="row">
    
        <div class="col-md-12">
        <div class="container">
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <h1 style="position: fixed;margin-top: 5%;z-index: 23;text-align: center;color:#fff;margin-right:60%;">Welcome To Online PG Booking System</h1>
        <img src="image/16.jpg" alt="Los Angeles" style="width:100%;height:50%">
        
      </div>

      <div class="item">
      <h1 style="position: fixed;margin-top: 10%;z-index: 23;text-align:center;center;color:#fff;padding-right:20%;">The Best PG deals from all the top Cities</h1>
        <img src="image/3.jpg" alt="Chicago" style="width:100%; height:50%;">
      </div>
    
      <div class="item">
      <h1 style="position: fixed;margin-top: 30%;z-index: 23;text-align: center;center;color:#fff;margin-right:80%; fount-size:bold;">We Provide Best PG  </h1>
        <img src="image/18.jpg" alt="New york" style="width:100%; height:50%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
        
        
        </div>
    
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
		<div class="row">


			<!-- Left Side Image  -->
			<div class="col-md-6">


				<form action="img_delhi">

							<!-- <input type="image" src="C:/Users/dell/Desktop/Servlets/Online_PGBooking_UI/WebContent/image/mumbai.jpg" alt="mumbai"  name="pg_city" value="mumbai" width="400" height="350" />
                            
                            <input type="image" src="C:/Users/dell/Desktop/Servlets/Online_PGBooking_UI/WebContent/image/OM.jpg" alt="mumbai"  name="pg_city" value="pune" width="400" height="350" />
                            <h3>Pune</h3>
                             -->
                            <h3  style="color: black;">Mumbai</h3>
								<input type="image" src="data:image/jpeg;base64,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" alt="mumbai"  name="pg_city" value="mumbai" width="400" height="350" />
				 
					<h3 style="color: black;">Pune</h3> 
					 <input type="image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKf26BSyz-eeMTTecrLVUgqQQU0YO-hNmNlEnZOJxecAeLY_S0ew" alt="pune"  name="pg_city" value="pune" width="400" height="350" /> 
					<!-- <input type="image" src="C:/Users/dell/Desktop/Servlets/Online_PGBooking_UI/WebContent/image/delhi.jpg" alt="pune"  name="pg_city" value="pune" width="400" height="350">-->
					
					
				</form>
			</div>

			<!-- Right Side Image  -->
			<div class="col-md-6">

				<form action="img_delhi">
				<!-- <input type="image" src="C:/Users/dell/Desktop/Servlets/Online_PGBooking_UI/WebContent/image/delhi.jpg" alt="mumbai"  name="pg_city" value="delhi" width="400" height="350" />
                -->            
				 <h3 style="color: black;">Delhi</h3>
                           <!--  <input type="image" src="C:/Users/dell/Desktop/Servlets/Online_PGBooking_UI/WebContent/image/Mysore.JPG" alt="mumbai"  name="pg_city" value="bangalore" width="400" height="350" />
                          <h3>Bangalore</h3>  --> 
                        								
					 <input type="image"
						src="https://upload.wikimedia.org/wikipedia/commons/b/b0/Indiagate_%281%29.jpg"
						alt="delhi" name="pg_city" value="New Delhi" width="400"
						height="350" /> 
						<!-- <input type="image" src="C:/Users/dell/Desktop/Servlets/Online_PGBooking_UI/WebContent/image/Mysore.JPG" alt="pune" name="pg_city" value="pune"
						width="400" height="350" />
						 -->
						
					<h3 style="color: black;">Bangalore</h3> 
					<input type="image" src="data:image/jpeg;base64,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" alt="bangaolore" name="pg_city" value="bangalore" width="400" height="350" />
				     <!-- <h3>Delhi</h3> -->
					<!-- <input type="image" src="C:/Users/dell/Desktop/Servlets/Online_PGBooking_UI/WebContent/image/Mysore.JPG" alt="pune" name="pg_city" value="pune"
						width="400" height="350" />
					 -->
				</form>




			</div>

		</div>
	</div>



	<!-- Footer -->
	<br>
	<jsp:include page="footer.jsp" />
	<br>
	<!-- Footer -->


</body>
</html>