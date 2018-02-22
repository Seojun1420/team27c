<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="a" class="service.Actress"/>
<jsp:setProperty name="a" property="*"/>
<%@page import="service.ActressDao" %>
<%@page import="service.Actress" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>team27</title>
</head>
<body>

<% 
	ActressDao actressDao = new ActressDao();
	actressDao.insertActress(a);
%>
</body>
</html>