<%@page import="com.oop.model.item"%>
<%@page import="com.oop.service.Cartservice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    


<%@ page import="java.util.List" %>    

    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>

<link rel="stylesheet" href="cart.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br><br>
<div class="container-fluid bg-light" style="margin-top: 150px;">

<div class="container-fluid">
    <div class="row">
        <aside class="col-lg-9">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-borderless table-shopping-cart">
                        <thead class="text-muted">
                            <tr class="small text-uppercase">
                                <th  scope="col">Product</th>
                                <th class="table-header-style" scope="col" width="120">Quantity</th>
                                <th class="table-header-style" scope="col" width="120">Price</th>
                                <th scope="col" class="text-right d-none d-md-block" width="200"></th>
                            </tr>
                        </thead>
                        
                        <%float tot=0;%>
                                             
		   					   <% 
		   List<item> itemlist1=Cartservice.getcartItemList();%>

		<%for(item i:itemlist1){ %>
		   					 
		   					 <%tot=tot+(i.getPrice())*(i.getAvailable_qty()); %>
                        
                        <tbody>
                            <tr>
                                <td>
                                    <figure class="itemside align-items-center">
                                        <div class="aside"><img src="https://live.staticflickr.com/65535/51203105920_dcf2c4d55c_b.jpg" style="height:50px;width:auto;" class="img-sm"></div>
                                        <figcaption class="info"> <a href="#" class="title text-dark" data-abc="true"><%=i.getName() %></a>
                                            <p class="text-muted small">Category: <%=i.getType() %> <br> Description: <%=i.getDescription()%></p>
                                        </figcaption>
                                    </figure>
                                </td>
                                <td> 
                                <form action="edcartitm" id="edititem" method="post">
                                		<input type="text" form="edititem" class="form-control coupon" name="quantity" value="<%=i.getAvailable_qty() %>">
                                		<input type="hidden" form="edititem" name="edititemcart" value="<%=i.getId()%>">
                                		<button type="submit" form="edititem" class="btn btn-light" > Edit </button>
                                </form>                    
                                		
                                	
                                </td>
                                <td>
                                    <div class="price-wrap"> <var class="price">Rs.<%=i.getPrice() %></var> <small class="text-muted">  </small> </div>
                                </td>
                                <td class="text-right d-none d-md-block"> 
                                <form action="deletefromcart" method="post" id="deletecartitem">                             	
                                	<button type="submit" form="deletecartitem" class="btn btn-light" name="delfromcart" value="<%=i.getId()%>"> Remove </button>                                	
                                </form>
                                </td>
                            </tr>
                                                                                                  
                        </tbody>
                        <%} %>
                    </table>
                </div>
            </div>
        </aside>
        <aside class="col-lg-3">
            <div class="card mb-3">
                
            </div>
            <div class="card">
                <div class="card-body">
                    <dl class="dlist-align">
                        <dt>Total price Rs:<%=tot %></dt>
                        <dd class="text-right ml-3"></dd>
                    </dl>
                    <dl class="dlist-align">
                        <dt>Discount:</dt>
                        <dd class="text-right text-danger ml-3">0.00</dd>
                    </dl>
                    <dl class="dlist-align">
                        <dt>Total:<%=tot %></dt>
                        <dd class="text-right text-dark b ml-3"><strong></strong></dd>
                    </dl>
		   					 
                    <hr> 
                    <form action="finalcart" id="finalcartf" method="post">
                    <button type="submit" form="finalcartf" class="btn btn-danger btn-primary btn-square btn-main" name="cartend" value="<%=tot%>"> Purchase </button> 
                    <a href="itemshow.jsp" class="btn btn-out btn-success btn-square btn-main mt-2" data-abc="true">Continue Shopping</a>
                    </form>
                </div>
            </div>
        </aside>
    </div>   
</div>

<jsp:include page="footer.jsp"></jsp:include>
	 
</body>
</html>