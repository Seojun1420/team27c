<%-- team27c 김문기--%> 
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%@page import="service.ActressDao" %>
<%@page import="service.Actress" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>updateActressAction</title>
</head>
<body>
<%
	int actressId = Integer.parseInt(request.getParameter("actressId"));
	String actressName = request.getParameter("actressName");
	int actressAge = Integer.parseInt(request.getParameter("actressAge"));
	System.out.println(actressName);
	System.out.println(actressAge);
	
	Actress actress = new Actress();
	actress.setActressId(actressId);
	actress.setActressName(actressName);
	actress.setActressAge(actressAge);
	
	ActressDao actressDao = new ActressDao();
	actressDao.ActionUpdateActress(actress);

%>
</body>
</html>