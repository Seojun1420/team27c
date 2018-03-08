<!-- team27 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="service.ComedianDao" %>
<%@ page import ="service.Comedian" %>
<% request.setCharacterEncoding("euc-kr"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertComedianAction</title>
</head>
<body>

<%
	String comedianName = request.getParameter("comedianName");
	int comedianAge = Integer.parseInt(request.getParameter("comedianAge"));
	System.out.println(comedianName + "<-comedianName");
	System.out.println(comedianAge+ "<-comedianAge");
	
	Comedian comedian = new Comedian();
	comedian.setComedianName(comedianName);
	comedian.setComedianAge(comedianAge);
	System.out.println(comedian + "<-- comedian 출력확인");
	
	ComedianDao comediandao = new ComedianDao();
	comediandao.insertComedian(comedian);
	System.out.println(comedian + "<-- comedian 출력확인");
	
	response.sendRedirect(request.getContextPath() + "/comedian/comedianList.jsp");
%>
</body>
</html>