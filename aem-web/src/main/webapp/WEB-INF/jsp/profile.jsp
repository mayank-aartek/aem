<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<meta name="author" content="AEM">
<!-- let's add tag srping:url -->
<spring:url value="/resources/css/styles.css" var="profileCSS" />
<link href="${profileCSS}" rel="stylesheet" />
</head>
<body>

<%-- <c:set items="${employeeData}" var="employeeData"/> --%>
 
	<div id="maindiv">

		<h1>User Profile</h1>
<h1><c:out value="${employeeData.firstName}"/></h1>
		<form onsubmit="return false">
			<div class="col-2">
				<label> First Name <input
					placeholder="<c:out value="${employeeData.firstName}"/>" id="fName" name="fName"
					tabindex="1">
				</label>
			</div>

			<div class="col-2">
				<label> Middle Name <input
					placeholder="kumar" id="mName" name="mName"
					tabindex="2" disabled>
				</label>
			</div>

			<div class="col-2">
				<label> Last Name <input
					placeholder="${employeeData.lastName}" id="lName" name="lName"
					tabindex="3">
				</label>
			</div>

			<div class="col-2">
				<label> Email <input
					placeholder="${employeeData.email}" id="email" name="email"
					tabindex="4">
				</label>
			</div>

			<div class="col-2">
				<label> Contact Number <input
					placeholder="${employeeData.contactNo}" id="contact1"
					name="contact1" tabindex="5">
				</label>
			</div>

			<div class="col-2">
				<label> Reference Number <input
					placeholder="${employeeData.refrenceNo}" id="contact2"
					name="contact2" tabindex="6">
				</label>
			</div>

			<div class="col-3">
				<label> Grade <input placeholder="Please enter your grade"
					id="grade" name="grade" tabindex="7" disabled>
				</label>
			</div>

			<div class="col-3">
				<label> Designation <input
					placeholder="Please enter your designation" id="designation"
					name="designation" tabindex="8" disabled>
				</label>
			</div>

			<div class="col-3">
				<label> RM1 <input placeholder="Please enter your RM1"
					id="rm1" name="rm1" tabindex="9" disabled>
				</label>
			</div>

			<div class="col-3">
				<label> RM2 <input placeholder="Please enter your RM2"
					id="rm2" name="rm2" tabindex="10" disabled>
				</label>
			</div>

			<div class="col-3">
				<label> CUSTOMER USER ID DETAIL <input
					placeholder="Please enter your Customer User Detail"
					id="customerID" name="customerID" tabindex="11">
				</label>
			</div>

			<div class="col-3">
				<label> UPLOAD IMAGE <input type="file" id="image"
					name="image" accept="image/*" tabindex="12">
				</label>
			</div>

			<!--SKILL SECTION-->
			<div class="col-5">
				<label>
					<h2>Primary Skills</h2>
					<div class="skill">

						<span><input type="checkbox" value="java" /> Java </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> .Net </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> Android </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> SAP-ABAP</span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> PHP </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> IOS </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> Ruby </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br>

					</div>
				</label>
			</div>

			<div class="col-5" style="margin-left: 2%">
				<label>
					<h2>Secondary Skills</h2>
					<div class="skill">


						<span><input type="checkbox" value="java" /> Java </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> .Net </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> Android </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> SAP-ABAP </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> PHP </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> IOS </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br> <span><input type="checkbox" value="java" /> Ruby </span> <span
							style="float: right;"> <select>
								<option selected disabled>1 of 5</option>
								<option value="1">1</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
						</select>
						</span></br>
						</br>




					</div> <label>
			</div>

			<div class="col-submit">
				<button class="submitbtn">SUBMIT</button>
			</div>





		</form>
	</div>
</body>
</html>