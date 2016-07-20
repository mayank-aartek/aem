<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- let's add tag srping:url -->
<spring:url value="/resources/css/styles-welcome.css" var="welcomeLayoutCSS" />
<spring:url value="/resources/images/logo.png" var="welcomeLogo" />
<link href="${welcomeLayoutCSS}" rel="stylesheet" />
<!-- <link rel="stylesheet" href="resources/css/styles-welcome.css"> -->
<title>Insert title here</title>
</head>
<body>


<header id="header">		
	<div id="logo">	<img src="${welcomeLogo} " height="75" width="200" alt="logo"></div>
		<div id="header-title"><h1>Aartek Employee Managment</h1></div>
		<nav>
			<a href="#">Register</a>
			<a href="#">Home</a>			
		</nav>

</header>

</body>
</html>