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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>PG Details</title>
</head>
<body>

<br>
<jsp:include page="header.jsp" /> 
<br>


<div class="div1_pg_hide"> <!-- JQuery class to hide  -->
	<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
	<div class="container">
	 <div class= "row">		
			<div class="col-md-8" >  
				
		<h2 Style="color: green">${add}	</h2>	
			
				<h1 class="display-1">PG Details</h1><br>
							
				<form action="pgDeatils" method="post" enctype="multipart/form-data">

                          <div class="form-group">
							    <label for="name">Enter Pg Name </label>
							    <input type="text" class="form-control" name="pg_name" placeholder="Enter Pg Name">
						  </div>
						  
						  <div class="input-group">
  							<div class="input-group-prepend">
   							 <div class="input-group-text">
							    <label for="hostel-type">Enter hostel type </label>
							    <input type="radio" aria-label="Checkbox for following text input" name="pg_type" value="boys" checked>for boys
							    <input type="radio"  aria-label="Checkbox for following text input" name="pg_type" value="girls">for girls
						  </div>
						  </div>
						  </div>
						  
						   <div class="form-group">
							    <label for="address">Enter Availbality</label>
							    <input type="text" class="form-control" name="pg_avail" placeholder="Enter Your Availbality">
						  </div>
						  
					<div class="form-group">
					    <label for="exampleInputEmail1">Enter PG Facilities</label>
					    <textarea class="form-control" rows="3" cols="3" name="pg_facility"></textarea>
					   	<small id="emailHelp" class="form-text text-muted">Write all the Facilities comma separated.</small> 
					  </div>
					  
					  
					   <div class="form-group">
							    <label for="price">Enter Sharing</label>
							    <input type="text" class="form-control" name="pg_share" placeholder="Enter pg share type">
						  </div>
					     
					      <div class="form-group">
							    <label for="price">Enter price</label>
							    <input type="text" class="form-control" name="pg_price" placeholder="Enter Your price">
						  </div>
					  
					  
						  <div class="form-group">
							    <label for="address">Enter Your Address</label>
							    <input type="text" class="form-control" name="pg_address" placeholder="Enter Your Address">
						  </div>
						  
						  
						   <div class="form-group">
							    <label for="city">Enter area</label>
							    <input type="text" class="form-control" name="pg_area" placeholder="Enter Your area">
						  </div>
						 
						 	  <div class="form-group">
							    <label for="city">Enter city</label>
							    <!-- <input type="text" class="form-control" name="pg_city" placeholder="Enter Your city"> -->
							    <select name="pg_city">
							    	<option selected disable>Select</option>
							    	<option value="mumbai">Mumbai</option>
							    	<option  value="pune">Pune</option>
							    	<option  value="New Delhi">New Delhi</option>
							    	<option  value="bangalore">Bangaluru</option>
							    
							    </select>
						  </div>
						  
						  
						   <div class="form-group">
							    <label for="city">Enter state</label>
							    <input type="text" class="form-control" name="pg_state" placeholder="Enter Your state">
						  </div>
						  
						  <div class="form-group">
							    <label for="city">Enter lat</label>
							    <input type="text" class="form-control" name="pg_lat" placeholder="Enter Your lat">
						  </div>
						  
						  <div class="form-group">
							    <label for="city">Enter lag</label>
							    <input type="text" class="form-control" name="pg_lag" placeholder="Enter Your lag">
						  </div>
						 
						
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Image Upload(Front)</label>
					    <input type="file" class="form-control" name="pg_image1" multiple="multiple">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div> 
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Upload Room Image1</label>
					    <input type="file" class="form-control" name="pg_image2" multiple="multiple">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div> 
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Upload Room Image2</label>
					    <input type="file" class="form-control" name="pg_image3" multiple="multiple">
					   	 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div> 
					  
					  
					      
					  
					   <div class="form-group">
						  		<input type="submit"  name="submitDetails" value="submit" class="btn btn-primary btn-lg btn-block">
						  </div>

                 </form>
         </div>
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