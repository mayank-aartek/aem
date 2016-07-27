<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">


.mainmenu
{
margin-top:0px;
text-align: center; 
 font-size: 130%;
 color:black;

}

/* reset our lists to remove bullet points and padding */
.mainmenu, .submenu {
  list-style: none;
  padding: 0;
  margin: 0;
}

.mainmenu a {
  display: block;
  background-color:#ffbf00;
  text-decoration: none;
  padding: 10px;
  color:black;
  
}

.mainmenu a:hover {
    background-color: white; /*  #cc7a00 */
}

.mainmenu.submenu{
background-color:#ffbf00;

}

.mainmenu li:hover .submenu {
  display: block;
  max-height: 200px;

}

/*
  we now overwrite the background-color for .submenu links only.
  CSS reads down the page, so code at the bottom will overwrite the code at the top.
*/

.submenu a {
  background-color:#ffbf00;    
}

/* hover behaviour for links inside .submenu */
.submenu a:hover {
  background-color:#ffbf00;
}

/* this is the initial state of all submenus.
  we set it to max-height: 0, and hide the overflowed content.
*/
.submenu {
  overflow: hidden;
  max-height: 0;
  -webkit-transition: all 0.5s ease-out;

}
.mainmenuBox
{
max-width: 20%;
min-width: 150px;
margin:0 0 0 0;
position:absolute;
top:0;
left:0;
height: 100%;
background-color:#ffbf00;

}

.photoBox
{
text-aline:center;
}
#name
{
margin-left:0%;
position:absolute;
top:20%;
left:50%;
color:white;
font-size:120%;
}

}
#photo{
background-color: #00bfff;
border-radius:50%;

}

.mainmenuBox{
width: 20%;
height:100%;

}

#logo{
background-color:#00bfff;
width:100%;
height:97px;
}

</style>

<body>
<div class="mainmenuBox">
<div id="logo"><img style="height: 100%; width: 100%;" src="resources/images/logo.png"></div>


<div class="photoBox"><img id="photo" src="resources/images/icon-single-person.gif" style="width:45%; height:27%"><label id="name">Software Devloper</label></div>

<ul class="mainmenu">
    <li><a href="">Home</a></li>
   <li><a href="employeemanagement">EmployeeManagement</a></li>
    <li><a href="">About</a></li>
   
    
    <li><a href="">Transaction</a>
      <ul class="submenu">
       <li><a href="http://localhost:8080/aem-web-0.0.1-SNAPSHOT/showProfile">Profile</a></li>
        <li><a href=""></a></li>
        <li><a href=""></a></li>
      </ul>
    </li>
    <li><a href="">Contact us</a></li>
  </ul>
</div>
</body>
</html>