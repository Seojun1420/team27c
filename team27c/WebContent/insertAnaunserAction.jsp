<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="service.AnaunseoDao" %>
<%@ page import="service.Anaunseo" %>
<%request.setCharacterEncoding("EUC-KR"); %>   
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
		System.out.println(anaunseoName);
		System.out.println(anaunseoAge);
		
		Anaunseo anaunseo = new Anaunseo();
		anaunseo.setAnaunseoName(anaunseoName);
		anaunseo.setAnaunseoAge(anaunseoAge);
		
		AnaunseoDao anaunseoDao = new AnaunseoDao();
		anaunseoDao.insertAnaunseoList(anaunseo);
		
	%>

</body>
</html>