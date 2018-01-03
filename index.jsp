<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Check Username</title>
	<script type="text/javascipt">
		pic1 = new Image(16, 16);
		pic1.src = "loader.gif";
		$(document).ready(function(){
			$("#username").change(function() {
				var usr = $("#username").val();
				var st=document.getElementById("status");
				$("#status").html('<img src="loader.gif" align="absmiddle">&nbsp;Checking availability...');
				$.ajax({
					type: "GET",
					url: "CheckAvail",
					data: "username="+ usr,
					success: function(msg){
							$("#status").ajaxComplete(function(event, request, settings){
								st.innerHTML=msg;
							});
						}
				});
			});
		});
	</script>
</head>
<body>
	<div>
		<form action="#">
			<table>
				<tr>
					<td>Username:</td>
					<td><input type="text" id="username" name="username"></td>
					<td><span id="status" class="status"></span></td>
				</tr>
				<tr>
					<td>Full Name:</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html
