<!-- team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<h1>Insert Rapper Form</h1>
			<!-- POST������� ������ �Է��� �������� insertrapperAction.jsp�� �Ѱ��ش�. -->
			<form action="<%= request.getContextPath() %>/insertRapperAction.jsp" method="post">
				<table border="1">
					<tr>
						<th>rapper Name</th>
						<td><input type="text" name="rapperName" size="10"></td>
					</tr>
					<tr>
						<th>rapper Age</th>
						<td><input type="text" name="rapperAge" size="10"></td>
					</tr>
					<tr>
						<th>Insert</th>
						<td><input type="submit" value="����ϱ�"></td>
					</tr>
				</table>
			</form>	
				
</body>
<!-- <body>
	<h2>���� �Է�</h2>
	<form action="insertRapperAction.jsp" method="post">
		<p>����name : <input type = "text" name = "rapperName"></p>
		<p>����age : <input type = "text" name = "rapperAge"></p>
		<p></p>
		<input type = "submit" value = "�߰�">
	</form>
</body> -->
</html>