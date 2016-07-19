<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html >
  <head>
    <meta charset="UTF-8">
    <title>Resource Management System</title>
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    
    <!-- Load jQuery JS -->
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <!-- Load jQuery UI Main JS  -->
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js">	</script>
<script>
	$(document).ready(
  
  /* This is the function that will get executed after the DOM is fully loaded */
  function () {
    $( ".datepicker" ).datepicker({
      changeMonth: true,//this option for allowing user to select month
      changeYear: true //this option for allowing user to select from year range
    });
  }

);
</script>
    
        <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url("http://fonts.googleapis.com/css?family=Open+Sans:400,600,700");
@import url("http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css");
*, *:before, *:after {
  margin: 0;
  padding: 0;
  box-sizing:100%;
}

html, body {
 
  margin-left:100px;
  margin-top:50px; 
   
}

body {
  font: 14px/1 'Open Sans', sans-serif;
  color: #555;
  background: #eee;
}

h1 {
  padding: 50px 0;
  font-weight: 400;
  text-align: center;
}

p {
  margin: 0 0 20px;
  line-height: 1.5;
}

main {
  min-width: 320px;
  max-width: 900px;
  padding: 100px;
  margin: 0 auto;
  background: #fff;
}

section {
  display: none;
  padding: 20px 0 0;
  border-top: 1px solid #ddd;
}

input.t {
  display: none;
}

label {
  display: inline-block;
  margin: 0 0 -1px;
  padding: 15px 25px;
  font-weight: 600;
  text-align: center;
  color: #bbb;
  border: 1px solid transparent;
}

label:before {
  font-family: fontawesome;
  font-weight: normal;
  margin-right: 10px;
}

label[for*='1']:before {
  content: '\f1cb';
}

label[for*='2']:before {
  content: '\f1cb';
}

label[for*='3']:before {
  content: '\f16b';
}

label[for*='4']:before {
  content: '\f1a9';
}

label:hover {
  color: #888;
  cursor: pointer;
}

input:checked + label {
  color: #555;
  border: 1px solid #ddd;
  border-top: 2px solid orange;
  border-bottom: 1px solid #fff;
}

#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4 {
  display: block;
}

@media screen and (max-width: 650px) {
  label {
    font-size: 0;
  }

  label:before {
    margin: 0;
    font-size: 18px;
  }
}
@media screen and (max-width: 400px) {
  label {
    padding: 15px;
  }
}






#tab{

overflow: scroll;
}
.responstable {
  margin: 2em 0;
  width: auto;
  overflow:scroll;
  background: #FFF;
  color: #024457;
  border-radius: 10px;
  border: 1px solid #167F92;
  font-family:times new roman;
  
}
.responstable#t2 {
  margin: 2em 0;
  width: 100%;
  overflow:scroll;
  background: #FFF;
  color: #024457;
  border-radius: 10px;
  border: 1px solid #167F92;
  font-family:times new roman;
  
}



.responstable tr {
  border: 1px solid #D9E4E6;
}
.responstable tr:nth-child(odd) {
  background-color: #EAF3F3;
}
.responstable th {
  display: none;
  border: 1px solid #FFF;
  background-color: #167F92;
  color: #FFF;
  padding: 10px;
  
}
.responstable th:first-child {

  
  display: table-cell;
  text-align: center;
}
.responstable th:nth-child(2) {
  display: table-cell;
}
.responstable th:nth-child(2) span {
  display: none;
}
.responstable th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {

  .responstable th:nth-child(2) span {
    display: block;
  }
  .responstable th:nth-child(2):after {
    display: none;
  }
}
.responstable td {
  display: block;
  word-wrap: break-word;
  max-width: 150em;
}
.responstable td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid #D9E4E6;
}
@media (min-width: 480px) {
  .responstable td {
    border: 1px solid #D9E4E6;
  }
}
.responstable th, .responstable td {
  text-align: center;
  margin: .5em 1em;
}
@media (min-width: 100px) {
  .responstable th, .responstable td {
    display: table-cell;
    padding: 1em;
  }
}



body {
  
  font-family: Arial, sans-serif;
  color: #024457;
  background: #f2f2f2;
}

h1 {
  font-family: Verdana;
  font-weight: normal;
  color: #024457;
}
h1 span {
  color: #167F92;
}
th
{


}




#container {
    width: 600px;
    margin: 0 auto;
    padding: 20px;
}

.btn {
    display: inline-block;
    padding: 10px;
    border-radius: 5px; /*optional*/
    color: #aaa;
    font-size: .875em;
}

.pagination {
    background: #FFFFFF;
    padding: 20px;
    margin-bottom: 20px;
}

.page {
    display: inline-block;
    padding: 0px 9px;
    margin-right: 4px;
    border-radius: 3px;
    border: solid 1px #c0c0c0;
    background: #e9e9e9;
    box-shadow: inset 0px 1px 0px rgba(255,255,255, .8), 0px 1px 3px rgba(0,0,0, .1);
    font-size: .875em;
    font-weight: bold;
    text-decoration: none;
    color: #717171;
    text-shadow: 0px 1px 0px rgba(255,255,255, 1);
}

.page:hover, .page.gradient:hover {
    background: #fefefe;
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#FEFEFE), to(#f0f0f0));
    background: -moz-linear-gradient(0% 0% 270deg,#FEFEFE, #f0f0f0);
}

.page.active {
    border: none;
    background: #616161;
    box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .8);
    color: #f0f0f0;
    text-shadow: 0px 0px 3px rgba(0,0,0, .5);
}

.page.gradient {
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#f8f8f8), to(#e9e9e9));
    background: -moz-linear-gradient(0% 0% 270deg,#f8f8f8, #e9e9e9);
}

.pagination.dark {
    background: #414449;
    color: #feffff;
}

.page.dark {
    border: solid 1px #32373b;
    background: #3e4347;
    box-shadow: inset 0px 1px 1px rgba(255,255,255, .1), 0px 1px 3px rgba(0,0,0, .1);
    color: #feffff;
    text-shadow: 0px 1px 0px rgba(0,0,0, .5);
}

.page.dark:hover, .page.dark.gradient:hover {
    background: #3d4f5d;
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#547085), to(#3d4f5d));
    background: -moz-linear-gradient(0% 0% 270deg,#547085, #3d4f5d);
}

.page.dark.active {
    border: none;
    background: #2f3237;
    box-shadow: inset 0px 0px 8px rgba(0,0,0, .5), 0px 1px 0px rgba(255,255,255, .1);
}

.page.dark.gradient {
    background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#565b5f), to(#3e4347));
    background: -moz-linear-gradient(0% 0% 270deg,#565b5f, #3e4347);
}




    </style>

    
        

    
  </head>

  <body>

    

<main>
  
  <input class="t" id="tab1" type="radio" name="tabs" checked/>
  <label for="tab1">List</label>
    
  <input class="t" id="tab2" type="radio" name="tabs"/>
  <label for="tab2">Maintenance</label>
    
 
    
  <section id="content1">
<body>
<form >
<div id="tab">
<table class="responstable" id="t2">
<tr style="background:rgb(234,243,243)"> Show<select><option>select<option></select> &nbsp;enteries &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
 Search <input type="text" style="width:68px"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Select Month <input type="text" style="width:68px"/>&nbsp;&nbsp;<a href="#">View Timesheet</a> &nbsp;&nbsp;     <a href="#">Add Current/Past Week's Timesheet</a></tr>

  <tr>
    <th>Project</th>
    <th>Week End Date</th>
    <th>Total(Hrs)</th>
    <th>Approve Status</th>
  </tr>
  
 
  


  <tr>
   <td></td>
   <td></td>
   <td></td>
   
   <td></td>

  </tr>
 
  
 


 
  
</table>
</div>

</form >


</body>
<footer>

<div id="container">
 <div class="pagination" style="text-align:right">

  <a href="#" class="page">first</a><a href="#" class=
  "page">2</a><a href="#" class="page">3</a><a href="#" class="page">4</a>
  <a href="#" class=
  "page">5</a><a href="#" class="page">6</a><a href="#"
  class="page">last</a>
 </div>
</div>

</footer> 






 
  </section>
    
  <section id="content2">
<body>
<form >
<div id="tab">
<table class="responstable">
<tr colspan="5">Start Date<input type="text" class="datepicker" /> End Date
<input type="text" class="datepicker" />&nbsp;&nbsp;<a href="#">Add new</a></tr>
 <div style="font-size:10px;">
  <tr>
    <th rowspan="3">Status</th>
    <th rowspan="3">Project</th>
    <th rowspan="3">Activity</th>
    <th rowspan="3">Module/Ticket No.</th>
    <th colspan="6" style="font-size:15px;">Week</th>
  </tr>
  
  <tr style="font-size:10px;">
   <th>Monday</th>
   <th>Tuesday</th>
   <th>Wednesday</th>
   <th>Thursday</th>
   <th>Friday</th> 
   <th>Saturday</th>
  </tr>
  
  <tr  style="font-size:10px;">
   <th> Date  </th>
   <th> Date  </th>
   <th> Date  </th>
   <th> Date  </th>
   <th> Date  </th> 
   <th> Date </th>
  </tr>
</div>
  <tr>
   <td></td>
   <td><select><option>select<option></select></td>
   <td><select><option>select<option></select></td>
   <td><input type="text" /></td>
   <td><input type="text" style="width:68px"/></td>
   <td><input type="text" style="width:68px"/></td>
   <td><input type="text" style="width:68px"/></td>
   <td><input type="text" style="width:68px"/></td>
   <td><input type="text" style="width:68px"/></td> 
   <td><input type="text" style="width:68px"/></td>
  </tr>
 
  
 
 
  <tr style="background:rgb(234,243,243)"> 
   <td colspan="4">Hours</td> 
   <td><input type="text" style="width:68px"/></td>
   <td><input type="text" style="width:68px"/></td>
   <td><input type="text" style="width:68px"/></td>
   <td><input type="text" style="width:68px"/></td>
   <td><input type="text" style="width:68px"/></td> 
   <td><input type="text" style="width:68px"/></td>
  </tr>
  
  <tr>
   <td colspan="4">Total Weekly hours</td> 
   <td style="text-align:right" colspan="6">  <input type="text" style="width:68px" /></td>
  </tr>
 
  
</table>
</div>
<p align="center"><input type="button" value="Save"/>
<input type="button" value="Send for Approval"/>
</p>
</form >

  
  
  </body>  
  </section>
    
 
    
</main>
    
    
    
    
    
 
</html>
