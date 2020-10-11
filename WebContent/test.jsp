<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<div style="margin: auto; width: 30%; padding-top: 50px">
		<form id="form1" name="form1" method="post">
			<div class="form-group">
				<input type="text" class="form-control"
					placeholder='Search by rollno...' id="roll_no"><br>
				<p align="center">
					<button type="submit" class="btn btn-primary btn-default"
						id="search">Submit</button>
				</p>
				<br> <label for="city">Display city name of student:</label> <input
					type="email" class="form-control" placeholder='City name'
					id="city_name"><br>
					<label for="city">ID:</label> <input
					type="text" class="form-control" placeholder='id'
					id="id"><br>
					<label for="city">Password</label> <input
					type="text" class="form-control" placeholder='Password'
					id="password"><br>
				<br>
			</div>
		</form>
	</div>
	
	<div id="here_table"> </div>
	<script>
		$(document).ready(function() {
				var roll_no = 1;
				var id;
				var password;
				city_name.value = city_name;
				id.value = id;
				password.value = password;
				$.ajax({
					url : "fetch.jsp",
					type : 'POST',
					data : {
						roll_no : roll_no					
					},
					success : function(data) {
						$('#city_name').val(data);
						$('#id').val(data);
						$('#password').val(data);
						var table = $('<table>').addClass('foo');
						for(i=0; i<3; i++){
						    var row = $('<tr>').addClass('bar').text('result ' + i);
						    table.append(row);
						}

						$('#here_table').append(table);
						/* alert(data); */
						var city_name = data;
						id = id;
						password = password;
					}
				});
			});
		
	</script>
</body>
</html>