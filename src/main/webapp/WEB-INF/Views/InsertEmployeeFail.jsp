<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ include file="InsertEmployee.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
#p
{
width: 560px;
height: 50px;
margin-left: 73px;
}
font
{
margin-top: 10px;
}
#i
{
width: 300px;
margin-top: -434px;
margin-left: -241px;
}
</style>
</head>
<body>

<br>
<center>
<div class="card border-danger" id="p">
         <font color="red"><b>Employee Record Not Inserted</b></font>
        <font  class="text-warning bg-dark" id="i" align="center"><b>WARNING : </b>Employee Id already exist</font>
         </div>
         </center>
</body>
</html>