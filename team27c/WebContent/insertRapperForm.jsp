<!-- team27c 박지하 -->
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
			<!-- POST방식으로 폼에서 입력한 정보들을 insertrapperAction.jsp로 넘겨준다. -->
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
						<td><input type="submit" value="등록하기"></td>
					</tr>
				</table>
			</form>	
				
</body>
<!-- <body>
	<h2>래퍼 입력</h2>
	<form action="insertRapperAction.jsp" method="post">
		<p>래퍼name : <input type = "text" name = "rapperName"></p>
		<p>래퍼age : <input type = "text" name = "rapperAge"></p>
		<p></p>
		<input type = "submit" value = "추가">
	</form>
</body> -->
</html>