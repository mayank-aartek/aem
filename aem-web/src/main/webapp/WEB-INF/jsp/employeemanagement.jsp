<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<title>Resource Management System</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />


<!-- Load jQuery JS for dynamic row in maintence table -->
<spring:url value="/resources/js/dynamicRow.js" var="addNewRow" />
<script src="${addNewRow}"></script>

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
<script>
    function Pager(tableName, itemsPerPage) {
  
	this.tableName = tableName;
    this.itemsPerPage = itemsPerPage;
    this.currentPage = 1;
    this.pages = 0;
    this.inited = false;
    
    this.showRecords = function(from, to) {        
        var rows = document.getElementById(tableName).rows;
        // i starts from 1 to skip table header row
        for (var i = 1; i <= rows.length; i++) {
            if (i < from || i > to)  
                rows[i+1].style.display = 'none';
            else
                rows[i+1].style.display = '';
        }
    }
    
    this.showPage = function(pageNumber) {
    	if (! this.inited) {
    	//	alert("not inited");
    		return;
    	}

        var oldPageAnchor = document.getElementById('pg'+this.currentPage);
        oldPageAnchor.className = 'pg-normal';
        
        this.currentPage = pageNumber;
        var newPageAnchor = document.getElementById('pg'+this.currentPage);
        newPageAnchor.className = 'pg-selected';
        
        var from = (pageNumber - 1) * itemsPerPage + 1;
        var to = from + itemsPerPage - 1;
        this.showRecords(from, to);
    }   
    
    this.prev = function() {
        if (this.currentPage > 1)
            this.showPage(this.currentPage - 1);
    }
    
    this.next = function() {
        if (this.currentPage < this.pages) {
            this.showPage(this.currentPage + 1);
        }
    }                        
    
    this.init = function() {
        var rows = document.getElementById(tableName).rows;
        var records = (rows.length - 1); 
        this.pages = Math.ceil(records / itemsPerPage);
        this.inited = true;
    }

    this.showPageNav = function(pagerName, positionId) {
    	if (! this.inited) {
    		//alert("not inited");
    		return;
    	}
    	var element = document.getElementById(positionId);
    	
    	var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal"> &#171 Prev </span> | ';
        for (var page = 1; page <= this.pages; page++) 
            pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span> | ';
        pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next &#187;</span>';            
        
        element.innerHTML = pagerHtml;
    }
}
    </script>


<!-- popup script -->

<script type="text/javascript">

var strhour=new String();
var strDesc=new String();

function taskdescription(){
	  
	  //alert("hello");
	  
		$('#popup_box').fadeIn("slow");
		$("#container").css({ // this is just for style
			"opacity": "0.3"
		}); 
}



function workhour(hours){
	  
	 // alert("hour");
	  var workHour=hours;
	  //alert(workHour);
		$('#taskhour').append(" "+workHour);
		
		strhour=strhour.concat(workHour+" "); 
		//$('#hours').value
		//alert("str "+strhour);
		$('#hours').val(strhour);
		//alert($('#hours').val());
	  
}

	
	$(document).ready( function() {		
			
		// When site loaded, load the Popupbox First
		/*loadPopupBox();*/
		
		//var strhour=new String();
		//var strDesc=new String();
		
		
		$('.workinghour').keyup( function() {	// append taskHour 
			var workHour=$(this).val();
			$('#taskhour').append(" "+workHour);
			
			strhour=strhour.concat(workHour+" "); 
			//$('#hours').value
			//alert("str "+strhour);
			$('#hours').val(strhour);
			//alert($('#hours').val());
			
		});
		
		$('#popupBoxClose').click( function() {	// TO Unload the Popupbox
			$('#popup_box').fadeOut("slow");
			$("#container").css({ // this is just for style		
				"opacity": "1"  
			}); 
		});	
		
		$('.popupBtn').click(function() {	// To Load the Popupbox
		
			$('#popup_box').fadeIn("slow");
			$("#container").css({ // this is just for style
				"opacity": "0.3"
			}); 
		
			
		});
		
		//var task;
		$('#submitDesc').click(function() {	// To Load the Popupbox
		
		 	//var task =document.getElementById('taskDesc');
		var task=$('#taskDesc').val();		
		//$('#taskvar').append("_"+task);		
		//$('#taskDesc').val('');
		strDesc=strDesc.concat(task+"_");
		$('#taskDesc1').val(strDesc);
		
			$('#popup_box').fadeOut("slow");
			$("#container").css({ // this is just for style		
				"opacity": "1" });
			//$('#taskDesc').html('');
			//task +=task.value;
        //$('#taskvar').append(task);        
		//	alert("Form Submitted Successfully..."+$('#taskDesc1').val());
			
		
		});
		
		
		/**********************************************************/		
	});
</script>


<style>
/* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
@import
	url("http://fonts.googleapis.com/css?family=Open+Sans:400,600,700");

@import
	url("http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css")
	;

*, *:before, *:after {
	margin: 0;
	padding: 0;
	box-sizing: 100%;
}

html, body {
	margin-left: 100px;
	margin-top: 50px;
	margin-bottom: 150px;
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
	max-width: 1002px;
	max-height: 1200px;
	padding: 100px;
	margin-bottom: 100px;
	margin-top: -76px;
	margin-left: 103px;
	background: #fff;
	padding-bottom: 100px;
}

section {
	display: none;
	padding: 20px 0 0;
	border-top: 1px solid #ddd;
	overflow-y: hidden;
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

input:checked+label {
	color: #555;
	border: 1px solid #ddd;
	border-top: 2px solid orange;
	border-bottom: 1px solid #fff;
}

#tab1:checked ~ #content1, #tab2:checked ~ #content2, #tab3:checked ~
	#content3, #tab4:checked ~ #content4 {
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

#tab {
	height: 471px;
	overflow-x: hidden;
	overflow-y: scroll;
}

.responstable {
	margin: 2em 0;
	width: 100%;
	overflow-x: hidden;
	overflow-y: scroll;
	background: #FFF;
	color: #024457;
	border-radius: 10px;
	border: 1px solid #167F92;
	font-family: times new roman;
	height: 100px;
}

.responstable#t2 {
	margin: 2em 0;
	width: 100%;
	overflow: scroll;
	background: #FFF;
	color: #024457;
	border-radius: 10px;
	border: 1px solid #167F92;
	font-family: times new roman;
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

@media ( min-width : 480px) {
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

@media ( min-width : 480px) {
	.responstable td {
		border: 1px solid #D9E4E6;
	}
}

.responstable th, .responstable td {
	text-align: center;
	margin: .5em 1em;
}

@media ( min-width : 100px) {
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

th {
	
}

#results {
	margin: 2em 0;
	width: 100%;
	overflow: scroll;
	background: #FFF;
	color: #024457;
	border-radius: 10px;
	border: 1px solid #167F92;
	font-family: times new roman;
}

/* popup_box DIV-Styles*/
#popup_box {
	display: none; /* Hide the DIV */
	position: fixed;
	_position: absolute; /* hack for internet explorer 6 */
	height: 200px;
	width: 300px;
	background: #FFFFFF;
	left: 300px;
	top: 150px;
	z-index: 100;
	/* Layering ( on-top of others), if you have lots of layers: I just maximized, you can change it yourself */
	margin-left: 15px;
	/* additional features, can be omitted */
	border: 2px solid #ff0000;
	padding: 15px;
	font-size: 15px;
	-moz-box-shadow: 0 0 5px #ff0000;
	-webkit-box-shadow: 0 0 5px #ff0000;
	box-shadow: 0 0 5px #ff0000;
}

#container {
	background: #d2d2d2; /*Sample*/
	width: 100%;
	height: 100%;
}

a {
	cursor: pointer;
	text-decoration: none;
}

/* This is for the positioning of the Close Link */
#popupBoxClose {
	font-size: 20px;
	line-height: 15px;
	right: 5px;
	top: 5px;
	position: absolute;
	color: #6fa5e2;
	font-weight: 500;
}
</style>





</head>

<body>



	<main> <input class="t" id="tab1" type="radio" name="tabs"
		checked /> <label for="tab1">List</label> <input class="t" id="tab2"
		type="radio" name="tabs" /> <label for="tab2">Maintenance</label> <section
		id="content1">
	<body>
		<form enctype="application/x-www-form-urlencoded">
			<div id="tab">
				<table class="responstable" id="results">
					<tr style="background: rgb(234, 243, 243)">
						Show
						<select id="sel" onchange="load1(this.value)">
							<option value="2">2</option>
							<option value="4">4</option>
						</select> &nbsp;enteries &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search
						<input type="text" style="width: 68px" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Month
						<input type="text" style="width: 68px" />&nbsp;&nbsp;
						<a href="timesheet">View Timesheet</a> &nbsp;&nbsp;
						<a href="#">Add Current/Past Week's Timesheet</a>
					</tr>

					<thead>
						<tr>
							<th>Project</th>
							<th>Week End Date</th>
							<th>Total(Hrs)</th>
							<th>Approve Status</th>
						</tr>
					</thead>

					<c:forEach items="${emplist}" var="emlist">



						<tr>

							<td><c:out value="${emlist.project}"></c:out></td>
							<td><c:out value="${emlist.date}"></c:out></td>
							<td><c:out value="${emlist.totalHours}"></c:out></td>

							<td><c:out value="${emlist.approveStatus}"></c:out></td>

						</tr>
					</c:forEach>
					</div>





				</table>
				<div id="pageNavPosition"></div>
		</form>
		</div>
		<script type="text/javascript">
 val2=document.getElementById("sel").value;
 function load1(val1){
	 val2=val1
        var pager = new Pager('results',parseInt(val1)); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
 };
 var pager = new Pager('results',parseInt(val2)); 
 pager.init(); 
 pager.showPageNav('pager', 'pageNavPosition'); 
 pager.showPage(1);
    </script>


		<script type="text/javascript">
    
    $(document).ready(function(){
    	var i=0;
    	$("#addnew").click(function(){
    	// alert(1);

    	 var table = document.getElementById("myTable");
    	    var row = table.insertRow(4);
    	 row.id=i;
    	 
    	    var cell1 = row.insertCell(0);
    	    var cell2 = row.insertCell(1);
    	 var cell3 = row.insertCell(2);
    	  var cell4 = row.insertCell(3);
    	   var cell5 = row.insertCell(4);
    	
    	    cell2.innerHTML="<select><option>select</option></select>";
    	    cell3.innerHTML="<select><option>select</option></select>";
    	    cell4.innerHTML="<input type='text'/>"
    	 cell5.innerHTML = "<input type='text' style='width:30px'  class='workinghour' onKeyup='workhour(this.value)'/><button  type='button' onClick='taskdescription()' >ADD</button> ";
    	 
    	
    	// alert(row.id);
    	i++; 
    	});}); 
    
    
    </script>



	</body>








	</section> <section id="content2">
	<body>
		<form action="savetask" method="post">
			<div id="tab">
				<table id="myTable" class="responstable">
					<tr colspan="5">
						Start Date
						<input type="text" class="datepicker" /> End Date
						<input type="text" class="datepicker" />&nbsp;&nbsp;
						<button id="addnew" type="button">ADD NEW</button>
					</tr>
					<div style="font-size: 10px;">
						<tr>
							<th rowspan="2">Status</th>
							<th rowspan="2">Project</th>
							<th rowspan="2">Activity</th>
							<th rowspan="2">Module/Ticket No.</th>
							<th colspan="3" name="day" value="monday"
								style="font-size: 15px;">MONDay</th>
						</tr>

						<tr style="font-size: 10px;">
							<th><input type="text" name="date"></th>
							<!-- <th>Total Hours</th>
							<th>Total Weekly Hours</th>
 -->
						</tr>


					</div>
					<tr>
						<td></td>
						<td><select><option>select
								<option></select></td>
						<td><select><option>select
								<option></select></td>
						<td><input type="text" /></td>
						<td><input type="text" style="width: 35px" name="hour"
							class="workinghour" />
							<button class="popupBtn" type="button" name="task">ADD</button></td>





					</tr>

					<tr style="background: rgb(234, 243, 243)">
						<td colspan="4">Hours</td>
						<td><input type="text" style="width: 35px" /></td>

					</tr>

					<tr>
						<td colspan="4">Total Weekly hours</td>
						<td><input type="text" style="width: 35px" /></td>
					</tr>


				</table>
			</div>
			<p align="center">
				<input type="submit" value="Save" /> <input type="button"
					value="Send for Approval" />
			</p>


			<div id="popup_box">
				<!-- OUR PopupBox DIV-->

				<textarea id="taskDesc" name="taskpop"
					placeholder="write Discription"
					style="width: 100%; height: 50%; margin-top: 10px;"> </textarea>
				<a id="popupBoxClose">Close</a>
				<button id="submitDesc" type="button">Submit</button>

			</div>

			<input type="hidden" id="taskDesc1" name="taskDesc" /> <input
				type="hidden" id="hours" name="hours" />




		</form>



		<span id="taskvar"></span>
		<span id="taskhour"></span>

	</body>
	</section> </main>
</html>
