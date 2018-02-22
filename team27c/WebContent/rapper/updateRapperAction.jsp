<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="service.RapperDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("euckr");
	int rapperId = Integer.parseInt(request.getParameter("rapperId"));
	String rapperName = request.getParameter("rapperName");
	int rapperAge = Integer.parseInt(request.getParameter("rapperAge"));
	
	request.getParameter("rapperId");
	request.getParameter("rapperName");
	request.getParameter("rapperAge");
	
	RapperDao rapperDao = new RapperDao();
	rapperDao.UpdateRapper(rapperId, rapperName, rapperAge);
	
	response.sendRedirect(request.getContextPath() + "/rapper/rapperList.jsp");	
	
	
	
	
	
	
 %>

</body>
</html>