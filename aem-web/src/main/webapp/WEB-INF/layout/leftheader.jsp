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
 hight:100%;

}

/* reset our lists to remove bullet points and padding */
.mainmenu, .submenu {
  list-style: none;
  padding: 0;
  margin: 0;
}

.mainmenu a {
  display: block;
  background-color: wheat;
  text-decoration: none;
  padding: 10px;
  color:black;
  hight:100%;
  
}

.mainmenu a:hover {
    background-color:#05787F; /*  #cc7a00 */
}

.mainmenu.submenu{
background-color:#05787F;

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
  background-color:#05787F;    
}

/* hover behaviour for links inside .submenu */
.submenu a:hover {
  background-color:#05787F;
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
background-color: #19293B;

}

.photoBox
{
text-aline:center;
}
#name
{
color:white;
font-size:120%;
text-align: center;
margin-left: 15%;
}

}
#photo{
background-color: #ffcc99;
border-radius:50%;

}

.mainmenuBox{
width: 20%;
height:100%;

}

#logo{
background-color:wheat;
width:100%;
height:97px;
}

</style>

<body>
<div class="mainmenuBox">
<div id="logo"><img style="height: 100%; width: 100%;" src="resources/images/logo.png"></div>


<div class="photoBox"><img id="photo" src="resources/images/user logo.png" style="max-width:100%; max-height:100%; border-radius:50%"><br>
<label id="name">Software Devloper</label></div>

<ul class="mainmenu">
    <li><a href="">Home</a></li>
   <li><a href="employeemanagement">EmployeeManagement</a></li>
    <li><a href="">About</a></li>
   
    
    <li><a href="">Transaction</a>
      <ul class="submenu">
        <li><a href="showProfile">Profile</a></li>
        <li><a href=""></a></li>
        <li><a href=""></a></li>
      </ul>
    </li>
    <li><a href="">Contact us</a></li>
  </ul>
</div>
</body>
</html>