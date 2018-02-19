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
	<h2>래퍼 입력</h2>
	<form action="insertRapperAction.jsp" method="post">
		<p>래퍼name : <input type = "text" name = "name"></p>
		<p>래퍼age : <input type = "text" name = "age"></p>
		<p></p>
		<input type = "submit" value = "추가">
	</form>
</body>
</html>