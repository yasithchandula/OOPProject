<%@ page language="java" contentType="text/html; charset=ISO-8859-1;"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <link rel="stylesheet" href="index.css">

    <script src="https://kit.fontawesome.com/6c46de4262.js" crossorigin="anonymous"></script>
    
    <style>  
    
    body{
  background-image: url('https://live.staticflickr.com/65535/51204639242_d1c0366e8c_b.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;   
  
}

#btn-pannel{
    margin-top: 130px;
      width: 500px; 
      margin-right: 0;
 
}

#button{
    width: 150px;
    margin: 20px;
}

	</style>

    <title>Welcome To HEALTHBAY</title>
  </head>
  <body background="https://i.ibb.co/PcpfFFJ/front.jpg">   
    <div class="container-fluid">
        
         <div class="logo row">
          <nav class="navbar navbar-dark bg-transparent">
            <div class="container">
              <a class="navbar-brand" href="#">
                <img src="https://i.ibb.co/F7b5Tzv/healthbay11.png" alt="" width="" height="100">
              </a>
            </div>
          </nav>
        </div>
		
		
        <div class="container" id="btn-pannel">
         <a href="iteminsert.jsp" class="btn btn-primary" id="button">
            <div><i class="bi bi-clipboard-plus"></i></div> 
            <span>Add Item</span> 
         </a>
         
          <a href="selleritemlist.jsp" class="btn btn-secondary" id="button">
            <div><i class="bi bi-clipboard-minus"></i></div>
            <span>Edit/Delete Item</span>
          </a>
          
            <br><br>
          <a href="feedback-list.jsp" type="button" class="btn btn-success" id="button">
            <div><i class="fas fa-search-dollar"></i></div>
            <span>View Feedbacks</span>
          </a>
          <a href="index.jsp"  class="btn btn-danger" id="button">
            <div><i class="fas fa-user-tie"></i></div>
            <span>Logout</span>
          </a>
        </div>

        
        
      </div>

    






    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
 

</body>
</html>