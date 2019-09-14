
<!-- 

This Page is used  to show list of PG's after selecting  CITY

This List come from DataBase

Custom Tags is used we --- 

GET data from from NOTICE_BOARD (Scope Variable)

I am using list_data_from_notice_board == "ldfnb"


 -->




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

<title>List - PGBooking</title>
</head>
<body>

<div class="container">

	<div class="row">
		
		<center>
			
			<div class="col-md-6">
				
				<div class="list-group">
					 
					 <!--  <a href="#" class="list-group-item list-group-item-action active">
					    List Of PG's
					  </a> -->
					<!-- 
							We have to use for each loop -- in custom tags
					
					 -->
					  <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
					 <!--  <a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a>
					  <a href="#" class="list-group-item list-group-item-action">Porta ac consectetur ac</a>
					  <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a> -->
				</div>
			
			
			</div>
		
		</center> 
	
	</div>


</div>



</body>
</html>