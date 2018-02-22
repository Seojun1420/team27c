<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import="service.AnaunseoDao" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>insertAnaunserAction.jsp</title>
</head>
<body>
<%
	int anaunseoId = Integer.parseInt(request.getParameter("anaunseoId"));
	System.out.println(anaunseoId+"<-- anaunseoId");
	AnaunseoDao anaunseodao = new AnaunseoDao();
	anaunseodao.deleteAnaunseo(anaunseoId);
	
	response.sendRedirect(request.getContextPath()+"/anaunseoList.jsp");
%>

</body>
</html>