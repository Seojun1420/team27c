<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>loginFrom.jsp</title>
</head>
<body>
		<form action="<%= request.getContextPath() %>/login/loginAction.jsp" method="post" align="center">
			<td> 아이디 </td> 
			 <input type="text" name="id" placeholder="아이디">
			<td> 패스워드 </td> 
			 <input type="password" name="pw" placeholder="패스워드">
			<input type="submit" value="로그인">
			<%-- <a href="<%= request.getContextPath() %>/">회원가입</a> --%>
			<br>
		 </form>
</body>
</html>