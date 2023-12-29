<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script language="Javascript">
function validate()
{
if(document.form.id.selectedIndex=="")
{
alert ( "Please select Employee Id!");
return false;
}
var sel = document.getElementById("id");
//get the selected option
var selectedText = sel.options[sel.selectedIndex].text;
alert("You have selected"+" "+ selectedText + " " + "Employee Id for delete");
return true;
}
</script>
<style>
#a
{
margin-top: 100px;
margin-left: 40px;
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
button
{
margin-left: 18px;
}
#t
{
margin-top: -55px;
margin-left: 250px;
}
#l
{
margin-top: 18px;
margin-left: 50px;
}



</style>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<form class="row g-3 needs-validation" action="PerformDelete" method="post" novalidate id="s" name="form" onSubmit="return validate()">
<div class="card border-primary" id="z">
<div class="mb-3 row" id="a">
    <label for="validationCustom01" class="col-sm-5 col-form-label"><b>Employee Id</b></label>
  </div>
  <div class="col-sm-5" id="t">
    <select name="id" id="id" class="form-select" aria-label="Default select example">
    <option selected>Select Employee Id</option>
<c:forEach items="${idList}" var="id"><option>${id}</option></c:forEach></select>
  </div>
    <div class="col-sm-5" id="l">
    <button class="btn btn-primary" type="submit" value="Delete Employee">Delete Employee</button>
    </div>
    </div>
</form>
</body>
</html>