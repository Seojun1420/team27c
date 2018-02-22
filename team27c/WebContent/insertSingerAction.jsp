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
	SingerDao singerdao = new SingerDao();
	singerdao.selectSingerList();
	//String과 int형식의 SingerName를 준비한다
	String singerName = request.getParameter("singerName");
	int singerAge = Integer.parseInt(request.getParameter("singerAge"));
	
	System.out.println(singerName +"<--singerName");
	System.out.println(singerName +"<--singerAge");
	
	Singer singer = new Singer();
	singer.setSingerName(singerName);
	singer.setSingerAge(singerAge);
	
	System.out.println(singer + "<-- singer 출력확인");
	
	
	 %>