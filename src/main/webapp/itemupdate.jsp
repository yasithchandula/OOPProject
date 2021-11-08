<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="iteminsert.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
	
<meta charset="ISO-8859-1">
<title>Update Item</title>
</head>
<body>

	<H3>
		Insert Item Details
	</H3>
	<br>
	<br>


		<form action="insert1" class="row g-3" method="post">
			<div class="forminsert">
			<div class="col-md-6">
				<label for="inputName" class="form-label">Item Name</label> 
				<input type="text" class="form-control" id="inputName" name="name" required>
			</div>

			<div class="col-md-4">
				<label for="inputtype" class="form-label">Type</label> <select
					id="inputtype" name="type" class="form-select">
					<option selected value="tab">tablet</option>
					<option value="cap">capsule</option>
					<option value="syrup">syrup</option>
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
					placeholder="enter price" required>
			</div>
			<div class="col-md-8">
				<label for="description" class="form-label"> Description </label>
				<textarea class="form-control" name="description" rows="5" cols="5" id="description"
					required></textarea>
			</div>
			<div class="col-6">
				<label for="available_qty" class="form-label">Available
					Quantity</label> <input type="text" class="form-control" name="available_qty" id="available_qty"
					placeholder="Apartment, studio, or floor" required>
			</div>


			<div class="col-8">
				<input type="submit" name="itemupdate" class="btn btn-primary">Insert

			</div>

			
		</form>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

</body>
</html>