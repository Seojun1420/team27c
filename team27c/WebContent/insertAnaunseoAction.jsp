<!-- 도정만  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR"); %> 
<%@ page import="service.AnaunseoDao" %>
<%@ page import="service.Anaunseo" %>
  
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>insertAnaunserAction.jsp</title>
</head>
<body>
<%
	String anaunseoName = request.getParameter("anaunseoName");
	int anaunseoAge =Integer.parseInt(request.getParameter("anaunseoAge"));
	
	Anaunseo anaunseo = new Anaunseo();
	anaunseo.setAnaunseoName(anaunseoName);
	anaunseo.setAnaunseoAge(anaunseoAge);
	
	AnaunseoDao anaunseoDao = new AnaunseoDao();
	anaunseoDao.insertAnaunseo(anaunseo);
	
	response.sendRedirect(request.getContextPath()+"/anaunseoList.jsp");
	
%>

</body>
</html>