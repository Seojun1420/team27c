<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>insertSingerForm.jsp</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/insertSingerAction.jsp" method="post">
		<table border="1">
			<tr>
				<td>�����̸�</td>
				<td><input type="text" name="singerName" size="20"></td>
			<tr>
			<tr>
				<td>��������</td>
				<td><input type="text" name="singerAge" size="20"></td>
			<tr>
			<tr>
				<td><input type="submit" value="ȸ������"></td>
			</tr>
		</table>
	</form>
</body>
</html>