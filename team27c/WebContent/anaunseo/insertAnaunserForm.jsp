<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>insertAnaunserForm</title>
</head>
<body>
	<h1>Insert Anaunseo Form</h1>
		<form action="<%=request.getContextPath()%>/anaunseo/insertAnaunseoAction.jsp" method="post">
			<table border="1">
				<tr>
					<td>�Ƴ���̸�</td>
					<td><input type="text" name="anaunseoName" size="10"></td>
				</tr>
				<tr>
					<td>�Ƴ������</td>
					<td><input type="text" name="anaunseoAge" size="10"></td>
				</tr>
				<tr>
					<th>Insert</th>
					<td><input type="submit" value="����ϱ�"></td>
				</tr>
			</table>
		</form>
</body>
</html>