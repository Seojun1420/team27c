<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@page import = "service.Rapper" %>
<%@page import = "service.RapperDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
	int rapperId=Integer.parseInt(request.getParameter("rapperId"));
	System.out.println(rapperId+"<--rapperId");
	RapperDao rapperdao = new RapperDao();
	rapperdao.deleteRapper(rapperId);
	response.sendRedirect(request.getContextPath() + "/rapper/rapperList.jsp");
	%>

</body>
</html>