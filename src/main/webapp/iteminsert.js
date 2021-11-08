
function insertvalidate() {
  var x, y, text;

  // Get the value of the input field with id="numb"
  x = document.getElementById("price").value;
  y = document.getElementById("available_qty").vale;

  // If x is Not a Number or less than one or greater than 10
  if ((isNaN(x) || x < 1 || x > 10)&&(isNaN(y) || x < 1 || x > 10)) {
    text = "Input not valid";
  } else {
    text = "Input OK";
  }
  document.getElementById("price").innerHTML = text;
  document.getElementById("availabe_qty").innerHTML = text;
}
