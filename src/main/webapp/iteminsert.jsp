<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Insert Item</title>
  </head>

  <!-- CSS inline -->
<style> 

   
    body{
            background-image: url('https://i.ibb.co/PcpfFFJ/front.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;       
          }


</style>
</head>
<body>

		<center>

		<img src="https://live.staticflickr.com/65535/51203084372_9850622a27_b.jpg" height="100" >
		</center>
		
		<br>
		<br>
		
		<div class="container bg-light">
		<h2 style="text-align:center;font-weight: bold;">INSERT ITEM HERE</h2>
		<form action="insert1" class="row g-3" method="post" id="insertitm">
			<div class="formgroup">
				<label >Item Name</label> 
				<input type="text" class="form-control" id="inputName" name="name" required>
			</div>

			<div class="form-group">
				<label for="inputtype" class="form-label">Type</label> <select
					id="inputtype" name="type" class="form-select">
					<option selected value="tab">tablet</option>
					<option value="cap">capsule</option>
					<option value="syrup">syrup</option>
					<option value="inj">Injection</option>
					<option value="other">other</option>
				</select>
			</div>
			<div class="col-md-6">
				<label for="inputsize" class="form-label">Size</label> <input
					type="text" name="size" class="form-control" id="inputsize" required>
			</div>
			<div class="col-md-6">
				<label for="price" class="form-label">Price</label> <input
					type="text" class="form-control" id="price"
					placeholder="enter price" name="price" required>
			</div>
			<div class="col-md-8">
				<label for="description" class="form-label"> Description </label>
				<textarea class="form-control" name="description" rows="5" cols="5" id="description"
					required></textarea>
			</div>
			<div class="col-6">
				<label for="available_qty" class="form-label">Available
					Quantity</label> <input type="text" class="form-control" name="available_qty" id="available_qty"
					placeholder="Quantity" required>
			</div >
			<div class="col-12">
			
				<input type="submit" name="submit" class="btn btn-primary" >Insert

			</div>

			<div class="col align-self-end">
				<button type="reset" class="btn btn-primary">reset</button>
			</div>
			
			<div class="col-12"> 
				<a href="seller.jsp" class="btn btn-primary">Back</a>
			</div>
			
		</form>
		</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

</body>
</html>