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
  
	<jsp:include page="header.jsp"></jsp:include>
      

      <div class="container-fluid fixed-top" style="margin-top: 70px; z-index: -1;">
        <div class="row bg-light">
            <center>
                <h3>Search Items</h3>
            </center>

            <div class="col-md-4">

            </div>

            <form action="searchresult" method="post" class="d-flex col-md-4">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="scontent">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
      </div>

       <!-- title end-->

		

	 <!-- item shows start -->		
		
		<div class="container-fluid bg-light" style="margin-top: 150px;">

          <br>
		     
		    <div class="container bg-light">
               <br>
          
     
               <div class="row row-cols-1 row-cols-md-3 g-4">
               
               <!-- item showing start with looping using java -->
          
				<% List<item> itemlist1=itemDBUtil.getItemList();%>
				<%for(item i:itemlist1){ %>
		
	            <div class="col">
	               <div class="card">
	                  <img src="https://live.staticflickr.com/65535/51203105920_dcf2c4d55c_b.jpg" class="card-img-top" alt="..." style="height:35%;">
	                  <div class="card-body ">
	                      <div class="d-flex">
	                        <h5 class="card-title flex-row"><%=i.getName() %></h5>
	                        <h5 class="card-title flex-row-reverse text-danger" style="margin-left: 100px;">Rs. <%=i.getPrice() %> </h5>
	                      </div>
	                    
			                <p class="card-text"><%=i.getSize() %></p>
			                <p class="card-text text-success">Free Shipping</p>
			                   
			                <form action="itemdet" method="post" id="itmdet">
			                 	<button type="submit" form="itmdet" class="btn btn-success" name="detid" value="<%=i.getId()%>">Item Details</button>
			                </form>
			                   
			                 <br>
			                    
			                <form id="form1" action="addtocart" method="post">
			                    <button type="submit" form="form1"  class="btn btn-warning" name="cartid" value="<%=i.getId()%>">Add to cart </button>  
			                </form>
	                  </div>
	                </div>
	                 
	            </div>
              	<%} %>
             
             </div>          
            </div>
          </div>
        </div>
             
			
			
			
    <!-- item shows end -->

    <br>

	<!-- import footer --> 
 
		<jsp:include page="footer.jsp"></jsp:include>




    

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