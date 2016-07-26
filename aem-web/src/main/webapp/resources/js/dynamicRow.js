$(document).ready(function() {
	var i = 0;
	$("#addnew").click(function() {

		var table = document.getElementById("myTable");
		var row = table.insertRow(5);
		row.id = i;

		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		var cell3 = row.insertCell(2);
		var cell4 = row.insertCell(3);
		var cell5 = row.insertCell(4);
		var cell6 = row.insertCell(5);
		var cell7 = row.insertCell(6);
		var cell8 = row.insertCell(7);
		var cell9 = row.insertCell(8);
		var cell10 = row.insertCell(9);
		cell1.innerHTML = "";
		cell2.innerHTML = "<select><option>select</option></select>";
		cell3.innerHTML = "<select><option>select</option></select>";
		cell4.innerHTML = "<input type='text'/>";
		cell5.innerHTML = "<input type='text' style='width:68px'/>";
		cell6.innerHTML = "<input type='text' style='width:68px'/>";
		cell7.innerHTML = "<input type='text' style='width:68px'/>";
		cell8.innerHTML = "<input type='text' style='width:68px'/>";
		cell9.innerHTML = "<input type='text' style='width:68px'/>";
		cell10.innerHTML = "<input type='text' style='width:68px'/>";

		i++;
	});
});