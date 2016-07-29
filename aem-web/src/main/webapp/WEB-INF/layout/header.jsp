<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AEM</title>
<style type="text/css">

.headerBox
{
background-color:#ff9900;
max-width:80%;
height: 97px;
position: absolute;
top:0;
right:0%;
left:20%;
float: right;
}
.dropbtn {
/* background:url(resources/images/images.png) no-repeat;
 */    background-color: #ff9900;
    color: white;
    height: 10px;
    padding: 10px;
    font-size: 10px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    right: 0;
    background-color: #ff9900;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color:;
}

</style>
</head>
<body>
<div class="headerBox" style="text-align: center;font-size:200%;">
<label style="position:relative;top:20%;color:white;text-decoration:none;">Aartek Employee Management</label>
</div>
<div class="dropdown" style="float:right;">
 <img src="resources/images/icon-single-person.gif" width="60" height="50">
  <button class="dropbtn"><img src="resources/images/images.png" width="20" height="20"></button>
  <!-- <img src="resources/images/images.png" width="30" height="30"> -->
  
  <div class="dropdown-content">
    <a href="#">User Profile</a>
    <a href="#">Logout</a>
    <!-- <a href="#">Link 3</a> -->
  </div>
</div>
<body>
</body>
</html>