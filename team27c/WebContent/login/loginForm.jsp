<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>loginFrom.jsp</title>
</head>
<body>
		<form action="<%= request.getContextPath() %>/login/loginAction.jsp" method="post" align="center">
			<td> ���̵� </td> 
			 <input type="text" name="id" placeholder="���̵�">
			<td> �н����� </td> 
			 <input type="password" name="pw" placeholder="�н�����">
			<input type="submit" value="�α���">
			<%-- <a href="<%= request.getContextPath() %>/">ȸ������</a> --%>
			<br>
		 </form>
</body>
</html>