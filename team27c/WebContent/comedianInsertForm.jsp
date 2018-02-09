<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>comedianInsert.jsp</title>
	</head>
	<body>
		<form action="<%= request.getContextPath() %>/index.jsp" method="post">

			<table border="1">

				<tr>
					<td>comedian Id</td>
					<td><input type="text" name="comedian_id" size="10"></td>
				</tr>
				<tr>
					<td>comedian Name</td>
					<td><input type="text" name="comedian_name" size="10"></td>
				</tr>
				<tr>
					<td>comedian Age</td>
					<td><input type="text" name="comedian_age" size="10"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Home"></td>
					<td><input type="submit" value="Complete"></td>
				</tr>
			</table>

		</form>

	</body>
</html>