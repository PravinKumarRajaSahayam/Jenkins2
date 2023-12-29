<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script type="text/Javascript">
function validateForm(s)   
{
    valid = true
    if (document.assignmentForm.id.value=="")
    {
        alert ("Please fill Employee Id.");
        valid = false;
    }
    if (document.assignmentForm.name.value=="")
    {
        alert ("Please fill Employee Name.");
        valid = false;
    }
    if (document.assignmentForm.department.value=="")
    {
        alert ("Please fill Employee Department.");
        valid = false;
    }
    return valid;
}
function ValidateForm() {
    var id = document.getElementById("id").value;
    var lblError = document.getElementById("lblError");
    lblError.innerHTML = "";
    var expr = /^\d+$/;
    if (!expr.test(id)) {
        lblError.innerHTML = "Employee Id must be Number.";
    }
}
function ValidateForms() {
    var name = document.getElementById("name").value;
    var lblError = document.getElementById("lblErrors");
    lblErrors.innerHTML = "";
    var expr = /^[a-zA-Z]+$/;
    if (!expr.test(name)) {
        lblErrors.innerHTML = "Employee Name must be Alphabet.";
    }
}
function ValidateFormi() {
    var department = document.getElementById("department").value;
    var lblError1 = document.getElementById("lblError1");
    lblError1.innerHTML = "";
    var expr = /^[a-zA-Z]+$/;
    if (!expr.test(department)) {
        lblError1.innerHTML = "Employee Department must be Alphabet.";
    }
}
</script>
<style>
#a
{
margin-top: 40px;
}
#s
{
align: center;
margin-left: 180px;
margin-top: 90px;
}
#z
{
height: 280px;
width: 650px;
}
label
{
margin-left: 18px;
}
#o
{
margin-left: 18px;
}
</style>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<form class="row g-3 needs-validation" action="PerformUpdate" method="post" novalidate id="s" name="assignmentForm" onsubmit="return validateForm();">
<div class="card border-primary" id="z">
<div class="mb-3 row" id="a">
    <label for="id" class="col-sm-5 col-form-label"><b>Employee Id</b></label>
    <div class="col-sm-6">
      <input type="text" onkeypress="if ( isNaN( String.fromCharCode(event.keyCode) )) return false;" class="form-control" id="id" name="id"  onkeyup="ValidateForm();">
      <span id="lblError" style="color: red"></span>
    </div>
    <div class="invalid-feedback">
      Please fill employee id
    </div>
  </div>
  <div class="mb-3 row">
    <label for="name" class="col-sm-5 col-form-label"><b>Employee Name</b></label>
    <div class="col-sm-6">
      <input type="text" onkeypress="if ( !isNaN( String.fromCharCode(event.keyCode) )) return false;" class="form-control" id="name" name="name" onkeyup="ValidateForms();">
      <span id="lblErrors" style="color: red"></span>
    </div>
    <div class="invalid-feedback">
      Please fill employee name
    </div>
  </div>
  <div class="mb-3 row">
    <label for="department" class="col-sm-5 col-form-label"><b>Employee Department</b></label>
    <div class="col-sm-6">
      <input type="text" onkeypress="if ( !isNaN( String.fromCharCode(event.keyCode) )) return false;" class="form-control" id="department" name="department" onkeyup="ValidateFormi();">
      <span id="lblError1" style="color: red"></span>
    </div>
    <div class="invalid-feedback">
      Please fill employee department
    </div>
  </div>
  <div class="col-sm-5" id="o" >
    <button class="btn btn-primary" type="submit" value="Update Employee">Update Employee</button>
    </div>
    </div>
</form>
</body>
</html>