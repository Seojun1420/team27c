<!-- team27c 김문기 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>team271</title>
</head>
<body>
	<h1>Insert Actress Form</h1>
	<form action="<%=request.getContextPath()%>/insertActressAction.jsp"method="post">
		<table border="1">
			<tr>
				<th>여배우이름</th>
				<td><input type="text" name="actressName" size="10"></td>
			</tr>
			<tr>
				<th>여배우나이</th>
				<td><input type="text" name="actressAge" size="10"></td>
			</tr>
			<tr>
				<th>Insert</th>
				<td><input type="submit" value="등록하기"></td>
			</tr>
		</table>
	</form>
</body>
</html>