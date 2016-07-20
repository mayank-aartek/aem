<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- let's add tag srping:url -->
<spring:url value="/resources/css/styles-welcome.css" var="welcomeLayoutCSS" />
<link href="${welcomeLayoutCSS}" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>

<footer class="footer">		
<span>&copyAartek software solutions 2016</span>
</footer>

</body>
</html>