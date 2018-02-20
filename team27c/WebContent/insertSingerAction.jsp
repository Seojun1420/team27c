<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="service.SingerDao" %>
	<%@ page import="service.Singer" %>
	<%@ page import = "java.util.ArrayList" %>
<%request.setCharacterEncoding("EUC-KR"); %>  
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>insertSingerAction.jsp</title>
</head>
<body>
	<%
	 String singerName = request.getParameter("singerName");
	int singerAge = Integer.parseInt(request.getParameter("singerAge"));
	System.out.println("singerName");
	System.out.println("singerAge");
	
	Singer singer = new Singer();
	singer.setSinger_Name(singerName);
	singer.setSinger_Age(singerAge);
	
	SingerDao singerDao = new SingerDao();
	singerDao.insertSingerList(singer);
	 %>