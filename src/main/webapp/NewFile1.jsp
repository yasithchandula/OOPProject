<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <!-- Required meta tags -->
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
          <a class="navbar-brand" href="#"><img src="healthbay11.png" alt="logo" width="" height="45"></a>
          
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">            
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="#">Home</a>
              </li>
     		 <form action="categoryselect" method="post" id="ctegoryform">
              <li class="nav-item dropdown">
             
                <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Products
                </a>
                
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                 
				  <li> <button name="categorybtn" value="tablet" type="submit" form="ctegoryform" class="dropdown-item">Tablet</button></li>
                  <li><button name="categorybtn" value="capsule" type="submit" form="ctegoryform" class="dropdown-item">Capsule</button></li>                  
                  <li><button name="categorybtn" value="Syrup" type="submit" form="ctegoryform" class="dropdown-item">Syrup</button></li>
                  <li><button name="categorybtn" value="injection" type="submit" form="ctegoryform" class="dropdown-item">Injection</button></li>
                  
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
                  <li><a class="dropdown-item" href="#">Feedback</a></li>
                  <li><a class="dropdown-item" href="#">Contact Us</a></li>                  
                </ul>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="#">Cart <i class="fas fa-shopping-cart"></i></a>
              </li>

            </ul>

            <ul class="nav justify-content-end">
              <li class="nav-item">
                <a class="nav-link" href="#"><span style="font-size: 23px;" > <i class="fas fa-user-circle"></i> </span>Profile</a>
              </li>             
            </ul>
            
          </div>
        </div>
      </nav>

      <!-- nav bar end -->

      <!-- title -->

      <div class="container-fluid fixed-top" style="margin-top: 70px; z-index: -1;">
        <div class="row bg-light">
            <center>
                <h3>Search Items</h3>
            </center>

            <div class="col-md-4">

            </div>

            <form class="d-flex col-md-4">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
              
            
        </div>
      </div>

       <!-- title end-->

      <!-- items show -->
      <div class="container-fluid bg-light" style="margin-top: 150px;">

       <br>

        <div class="container bg-light">
            <br>
          <div class="row row-cols-1 row-cols-md-3 g-4">

            <div class="col">
                <div class="card">
                  <img src="G9FOA.jpg" class="card-img-top" alt="...">
                  <div class="card-body ">
                      <div class="d-flex">
                        <h5 class="card-title flex-row">Item Name</h5>
                        <h5 class="card-title flex-row-reverse" style="margin-left: 100px;">Item Price </h5>
                      </div>
                    
                    <p class="card-text text-success">Free Shipping</p>
                    <a href="#" class="btn btn-primary">Item Details</a>
                    <a href="#" class="btn btn-primary">Add to cart</a>
                  </div>
                </div>
              </div>

              <div class="col">
                <div class="card">
                  <img src="G9FOA.jpg" class="card-img-top" alt="...">
                  <div class="card-body ">
                      <div class="d-flex">
                        <h5 class="card-title flex-row">Item Name</h5>
                        <h5 class="card-title flex-row-reverse" style="margin-left: 100px;">Item Price </h5>
                      </div>
                    
                    <p class="card-text text-success">Free Shipping</p>
                    <a href="#" class="btn btn-primary">Item Details</a>
                    <a href="#" class="btn btn-primary">Add to cart</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card">
                  <img src="G9FOA.jpg" class="card-img-top" alt="...">
                  <div class="card-body ">
                      <div class="d-flex">
                        <h5 class="card-title flex-row">Item Name</h5>
                        <h5 class="card-title flex-row-reverse" style="margin-left: 100px;">Item Price </h5>
                      </div>
                    
                    <p class="card-text text-success">Free Shipping</p>
                    <a href="#" class="btn btn-primary">Item Details</a>
                    <a href="#" class="btn btn-primary">Add to cart</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card">
                  <img src="G9FOA.jpg" class="card-img-top" alt="...">
                  <div class="card-body ">
                      <div class="d-flex">
                        <h5 class="card-title flex-row">Item Name</h5>
                        <h5 class="card-title flex-row-reverse" style="margin-left: 100px;">Item Price </h5>
                      </div>
                    
                    <p class="card-text text-success">Free Shipping</p>
                    <a href="#" class="btn btn-primary">Item Details</a>
                    <a href="#" class="btn btn-primary">Add to cart</a>
                  </div>
                </div>
              </div>

              <div class="col">
                <div class="card">
                  <img src="G9FOA.jpg" class="card-img-top" alt="...">
                  <div class="card-body ">
                      <div class="d-flex">
                        <h5 class="card-title flex-row">Item Name</h5>
                        <h5 class="card-title flex-row-reverse" style="margin-left: 100px;">Item Price </h5>
                      </div>
                    
                    <p class="card-text text-success">Free Shipping</p>
                    <a href="#" class="btn btn-primary">Item Details</a>
                    <a href="#" class="btn btn-primary">Add to cart</a>
                  </div>
                </div>
              </div>             

          </div>
        </div>
    </div>

    <!-- item shows end -->

    <br>

 
    <!-- Footer Start -->
    <footer class="text-center text-lg-start bg-light text-muted">
         <!-- Section: Social media -->
        <section
      class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
      <!-- Left -->
      <div class="me-5 d-none d-lg-block">
        <span>Get connected with us on social networks:</span>
      </div>
      <!-- Left -->
  
      <!-- Right -->
      <div>
        <a href="#" class="me-4 text-reset">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="#" class="me-4 text-reset">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="#" class="me-4 text-reset">
          <i class="fab fa-google"></i>
        </a>
        <a href="#" class="me-4 text-reset">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="#" class="me-4 text-reset">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="#" class="me-4 text-reset">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->
  
    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold mb-4">
              <i class="fas fa-gem me-3"></i>HEALTHBAY
            </h6>
            <p>
              Here you can use rows and columns to organize your footer content. Lorem ipsum
              dolor sit amet, consectetur adipisicing elit.
            </p>
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Products
            </h6>
            <p>
              <a href="#!" class="text-reset">Angular</a>
            </p>
            <p>
              <a href="#!" class="text-reset">React</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Vue</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Laravel</a>
            </p>
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Useful links
            </h6>
            <p>
              <a href="#!" class="text-reset">Pricing</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Settings</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Orders</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Help</a>
            </p>
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Contact
            </h6>
            <p><i class="fas fa-home me-3"></i> Kalutara, 12000, LK</p>
            <p>
              <i class="fas fa-envelope me-3"></i>
              info@example.com
            </p>
            <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
            <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->
  
    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
      � 2021 Copyright:
      <a class="text-reset fw-bold" href="#">HEALTHBAY.com</a>
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer End -->




    

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
  </body>

</body>
</html>