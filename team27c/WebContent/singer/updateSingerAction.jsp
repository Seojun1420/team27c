<!-- team27c 왕서준  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>  
<%@ page import="service.SingerDao" %>
<%@ page import="service.Singer" %>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>UpdateSingerAction</title>
</head>
<body>
<% 
	int singerId = Integer.parseInt(request.getParameter("singerId"));
	String singerName = request.getParameter("singerName");
	int singerAge = Integer.parseInt(request.getParameter("singerAge"));
	
	
	Singer singer = new Singer();
	singer.setSingerId(singerId); 
	singer.setSingerName(singerName);
	singer.setSingerAge(singerAge);
	
	SingerDao singerdao = new SingerDao();
	singerdao.updateSingerAction(singer);
	
	response.sendRedirect(request.getContextPath()+"/singer/singerList.jsp");

%>

</body>
</html>