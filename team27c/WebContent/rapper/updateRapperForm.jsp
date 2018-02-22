<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="service.RapperDao" %>
<%@page import="service.Rapper" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int rapperId = Integer.parseInt(request.getParameter("rapperId"));
	System.out.println(rapperId);
	
	RapperDao rapperDao = new RapperDao();
	Rapper rapper = new Rapper();
	rapper=rapperDao.selectUpdateRapper(rapperId);
%>

	<%=rapper.getRapperId() %>
	<%=rapper.getRapperName() %>
	<%=rapper.getRapperAge() %>
	
</body>
</html>