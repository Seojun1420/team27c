<!-- team27c 왕서준  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>  
<%@ page import="service.SingerDao" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title> deleteSingerAction </title>
</head>
<body>
		<%	
		
			int singerId = Integer.parseInt(request.getParameter("singerId"));
			System.out.println(singerId+":결과");
			
			SingerDao singerdao = new SingerDao();
			singerdao.DeleteSinger(singerId);
	
			response.sendRedirect(request.getContextPath()+"/singer/singerList.jsp");
		
			
		
		
		%>
		
</body>
</html>