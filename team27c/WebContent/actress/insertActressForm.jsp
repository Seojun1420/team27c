<!-- team27c �蹮�� -->
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
				<th>������̸�</th>
				<td><input type="text" name="actressName" size="10"></td>
			</tr>
			<tr>
				<th>����쳪��</th>
				<td><input type="text" name="actressAge" size="10"></td>
			</tr>
			<tr>
				<th>Insert</th>
				<td><input type="submit" value="����ϱ�"></td>
			</tr>
		</table>
	</form>
</body>
</html>