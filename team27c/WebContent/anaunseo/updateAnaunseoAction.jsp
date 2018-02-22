<!-- team27 도정만 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@page import="service.AnaunseoDao"%>
<%@page import="service.Anaunseo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int anaunseoId = Integer.parseInt(request.getParameter("anaunseoId"));
	String anaunseoName = request.getParameter("anaunseoName");
	int anaunseoAge = Integer.parseInt(request.getParameter("anaunseoAge"));
	
	Anaunseo anaunseo = new Anaunseo();
	anaunseo.setAnaunseoId(anaunseoId);
	anaunseo.setAnaunseoName(anaunseoName);
	anaunseo.setAnaunseoAge(anaunseoAge);
	
	AnaunseoDao anaunseodao = new AnaunseoDao();
	anaunseodao.ActionUpdateAnaunnseo(anaunseo);
	
	response.sendRedirect(request.getContextPath()+"/anaunseo/anaunseoList.jsp");

%>
</body>
</html>