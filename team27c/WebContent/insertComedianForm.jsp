<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertComedianForm</title>
</head>
<body>
		<h1>Insert Actor Form</h1>
			<form action="<%= request.getContextPath() %>/insertComedianAction.jsp" method="post">
				<table border="1">
					<tr>
						<td>comedian Name</td>
						<td><input type="text" name="comedianName" size="10"></td>
					</tr>
					<tr>
						<td>comedian Age</td>
						<td><input type="text" name="comedianAge" size="10"></td>
					</tr>
					<tr>
						<td><input type="submit" value="등록하기"></td>
					</tr>
				</table>
			</form>
</body>
</html>