<!-- team27c �蹮�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%@page import="service.ActressDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>deleteActressAction.jsp</title>
</head>
<body>
<%
	int actressId= Integer.parseInt(request.getParameter("actressId"));
	System.out.println(actressId+":���");
	
	ActressDao act = new ActressDao();
	act.deleteActress(actressId);
	
	response.sendRedirect(request.getContextPath()+"/actressList.jsp");
%>
</body>
</html>