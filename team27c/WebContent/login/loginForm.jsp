<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>loginFrom.jsp</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/login/loginAction.jsp" method="post">
		<input type="text" name="id">
		<input type="text" name="pw">
		<input type="submit" value="로그인하기">
	</form>	
</body>
</html>