<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.oop.service.itemDBUtil" %>
<%@ page import="com.oop.model.item" %>
<%@ page import="java.util.List" %>    
<%@ page import="com.oop.service.Cartservice" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
</head>
<body>




	<table class="table">
  <caption>List of users</caption>
  <thead>
    <tr>
      <th scope="col">ItemID</th>
      <th scope="col">Name</th>
      <th scope="col">Size</th>
      <th scope="col">Type</th>
      <th scope="col">Quantity</th>
      <th scope="col">price</th>
    </tr>
  </thead>
  <tbody>
  
  <% 
		   List<item> itemlist1=itemDBUtil.getItemList();%>

		<%for(item i:itemlist1){ %>
		
    <tr>
      <th scope="row"><%=i.getId() %></th>
      <td><%=i.getName() %></td>
      <td><%=i.getSize() %></td>
      <td><%=i.getType() %></td>
      <td><%=i.getAvailable_qty() %></td>
      <td><%=i.getPrice() %></td>
      
      
      <td>
      	<form id="edititem" action="edititem" method="post">
      		<button type="submit" form="edititem" class="btn btn-warning" name="edititembtn" value="<%=i.getId()%>">Edit</button>
      	</form>
      </td>
      
       
      <td>
     	<form id="deleteitem" action="deleteitem" method="post">
      		<button type="submit" form="deleteitem" class="btn btn-danger" name="deleteitem" value="<%=i.getId()%>"> Delete </button>
      	</form>
      </td>
      
    </tr>
    <tr>
   </tr>
   
   <%} %>
   </tbody>
   </table>
   
   
   				<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
    
    
    
    

</body>
</html>