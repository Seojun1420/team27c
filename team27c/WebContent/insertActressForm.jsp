<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>team271</title>
</head>
<body>
<%request.setCharacterEncoding("euc-kr"); %>
	<form action="<%=request.getContextPath()%>/insertActressAction.jsp" method="post">
		<table border="1">
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="actressName" size="20"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="actressAge" size="20"></td>
			</tr>
			<tr>
				<td><input type="submit" value="���"></td>
			</tr> 
		</table>
	</form>
</body>
</html>