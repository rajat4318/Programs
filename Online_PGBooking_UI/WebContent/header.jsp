
<!-- THIS IS THE HEADER PAGE  -->

<head>
<style>
.header
{
background-color: #DC1E28;
color:black;

}

.navbar-default .navbar-nav>li>a {
    color: #fff;
}

.navbar-default .navbar-brand {
    color: #fff;
}

</style>
</head>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
    
    
    


<!-- class="navbar navbar-dark bg-dark"    class="navbar navbar-default" -->
    
    <div class="pos-f-t">
	  <div class="collapse" id="navbarToggleExternalContent">
	    <div class="bg-dark p-4">
	      <h5 class="text-white h4">Collapsed content</h5>
	      <span class="text-muted">Toggleable via the navbar brand.</span>
	    </div>
	  </div>
    
    
    <nav  class="navbar navbar-default">
  <div class="container-fluid header">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><h2 style="margin-top:0px">PG BooKing</h2></a>
    </div>
    
    <div style="float:right">
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="index.jsp">Home</a></li>
	      <!-- <li><a href="#">Prices</a></li>
	      <li><a href="#">Features</a></li> -->
	     <!--  <li><a href="userprofile">Profile</a></li> -->
	    <!--   <li><a href="aboutus.jsp">AboutUs</a></li> -->
	      <!-- <li><a name="pg_id" value=0 href="login.jsp">LogIn/SignUp</a></li> -->
	      <li><form action="loginheader" method="post"><input style="border: none; background: none; margin-top: 14px; color: #fff;" type="submit" value="LogIn/SignUp" /></form></li>
	       <li><form action="logout" method="post"><input style="border: none; background: none; margin-top: 14px; color: #fff;" type="submit" value="Log Out" /></form></li>
	     <%--  <li> <a href="userprofile">Welcome User</a> <% session.setAttribute("namevalue",session.getAttribute("uname") );if(session.getAttribute("namevalue")!=null){out.print(session.getAttribute("namevalue"));}else{out.print("please login");} %> </li>
	    --%>
	    <li> <a href="userprofile"><% session.setAttribute("namevalue",session.getAttribute("uname") );if(session.getAttribute("namevalue")!=null){out.print("Welcome "+session.getAttribute("namevalue"));}else{out.print("Welcome Guest");} %></a>  </li>
	   
	    </ul>
    
    
	     <form class="navbar-form navbar-left" action="menu_search">
	      <div class="form-group">
	        <input type="text" class="form-control" name="search_area" placeholder=" Search By Area">
	      </div>
	      <button type="submit" class="btn btn-default">Search</button>
	    </form> 
    
    
    </div>
    
  </div>
</nav>
    