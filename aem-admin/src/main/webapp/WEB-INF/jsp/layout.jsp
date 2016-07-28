<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

    <head>
        <title>CSS Registration Form</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
         <%-- <link rel="stylesheet" type="text/css" href="resources/css/Layout.css"/>
        <!-- let's add tag srping:url -->
		<spring:url value="/resources/css/Layout.css" var="employeeRegistrationCSS" />
		<link href="${employeeRegistrationCSS}" rel="stylesheet" />
   --%>
 
 
<style>
{
    padding: 0;
    margin: 0;
    border: 0;
}
body, html {
    color: #373C40;
    font-family: Verdana,Arial, Helvetica, sans-serif;
    /* height: 100%; */
    height: 100%;
    width:100%;
    background-color: #f0f0f0;
    margin:10px;
}
body {
    font-size: 70%;
   /*  height: 800px; */
}
.myp{
  height:484px;
}

</style>

 
 
 
 
   </head>
    <body>    
        <p class="myp">Welcome</p>
    </body>
</html>