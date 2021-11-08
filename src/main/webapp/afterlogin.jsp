<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <link rel="stylesheet" href="page1.css">
    
    <style type="text/css">
			 body{
			  background-image: url('https://i.ibb.co/PcpfFFJ/front.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;  
			  background-size: cover;   
			  
			}
			
			#btn-pannel{
			    margin-top: 120px;
			      width: 500px; 
			      margin-right: 0;
			 
			}
			
			#button{
			    width: 150px;
			    margin: 20px;
			}
    </style>

    <script src="https://kit.fontawesome.com/6c46de4262.js" crossorigin="anonymous"></script>

    <title>Hello, world!</title>
  </head>
  <body>   
    <div class="container-fluid">
        
         <div class="logo row">
          <nav class="navbar navbar-dark bg-transparent">
            <div class="container">
              <a class="navbar-brand" href="#">
                <img src="healthbay11.png" alt="" width="" height="100">
              </a>
            </div>
          </nav>
        </div>

        <div class="container" id="btn-pannel">
          <center>
          <div> 
            <h1>  Hi ${username} </h1>
          </div>
          <br>
		
		<form action="aflogin" id="alogin" method="post">
          <button type="Submit" form="alogin" class="btn btn-primary" id="button">
            <div><i class="fas fa-user-plus"></i></div> 
            <span>Go to Profile</span> 
          </button>
          </form>
          <a href="itemshow.jsp" type="button" class="btn btn-secondary" id="button">
            <div><i class="fas fa-sign-in-alt"></i></div>
            <span>Browse the Store</span>
          </button>
        </center>
           
        </div>

        
        
      </div>

    






    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
<!--     
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->




<body>

</body>
</html>