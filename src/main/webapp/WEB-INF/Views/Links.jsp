<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
#csss
{
height: 118px;
  width: 230%;
}
li
{
text-align: center;
}
a:hover {
  background-color: yellow;
}
</style>
</head>
<body>
<div class="nav" style="width: 300px; height: 595px;">
<ul class="nav flex-column">
  <li class="nav-item bg-primary rounded border border-white text-center" id="csss">
    <a class="nav-link text-white" aria-current="page" href="InsertEmployee" target="content">Insert Employee</a>
  </li>
  <li class="nav-item bg-primary rounded border border-white text-center" id="csss">
    <a class="nav-link text-white" href="UpdateEmployee" target="content">Update Employee</a>
  </li>
  <li class="nav-item bg-primary rounded border border-white text-center" id="csss">
    <a class="nav-link text-white" href="DeleteEmployee" target="content">Delete Employee</a>
  </li>
<li class="nav-item bg-primary rounded border border-white text-center" id="csss">
    <a class="nav-link text-white" href="FindEmployee" target="content">Find Employee</a>
  </li>
  <li class="nav-item bg-primary rounded border border-white text-center" id="csss">
    <a class="nav-link text-white" href="FindAllEmployee" target="content">Find All Employee</a>
  </li>
</ul>
</div>
</body>
</html>