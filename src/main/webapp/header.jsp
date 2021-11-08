<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.oop.service.itemDBUtil" %>
<%@ page import="com.oop.model.item" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/6c46de4262.js" crossorigin="anonymous"></script>

    <title>Hello, world!</title>
  </head>
  <body>

    <!-- nav bar -->

    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><img src="https://live.staticflickr.com/65535/51203084372_9850622a27_b.jpg" alt="logo" width="" height="45"></a>
          
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">            
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="itemshow.jsp">Home</a>
              </li>
              
     		
              <li class="nav-item dropdown">
              <form action="categoryselect" method="post" id="ctegoryform">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Products
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li> <button name="categorybtn" value="tab" type="submit" form="ctegoryform" class="dropdown-item">Tablet</button></li>
                  <li><button name="categorybtn" value="cap" type="submit" form="ctegoryform" class="dropdown-item">Capsule</button></li>                  
                  <li><button name="categorybtn" value="syrup" type="submit" form="ctegoryform" class="dropdown-item">Syrup</button></li>
                  <li><button name="categorybtn" value="inj" type="submit" form="ctegoryform" class="dropdown-item">Injection</button></li>
                </ul>
                </form>
               
              </li>
              

              <li class="nav-item">
                <a class="nav-link" href="#">About Us</a>
              </li>

              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Help
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="feedback-list.jsp">Feedback</a></li>
                  <li><a class="dropdown-item" href="#">Contact Us</a></li>                  
                </ul>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="cart.jsp">Cart <i class="fas fa-shopping-cart"></i></a>
              </li>

            </ul>

            <ul class="nav justify-content-end">
              <li class="nav-item">
              	<form action="aflogin" method="post" id="prof" >
                <button type="submit" form="prof" class="btn btn-blue-grey" ><span style="font-size: 23px;" > <i class="fas fa-user-circle"></i> </span>Profile</button>
                </form>
              </li>             
            </ul>
            
          </div>
        </div>
      </nav>

      <!-- nav bar end -->

      <!-- title -->
      



       <!-- title end-->
       
       
       
       
       
           <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
	
		
		
		

	
	






</body>
</html>