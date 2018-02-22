<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>  
<jsp:useBean id="singer" class="service.Singer"/>
<jsp:setProperty name="singer" property="*"/>
<%@ page import="service.SingerDao" %>
<%@ page import="service.Singer" %>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>team27</title>
</head>
<body>
	<%
	
	SingerDao singerdao = new SingerDao();
	singerdao.insertSinger(singer);
	//String과 int형식의 SingerName를 준비한다

	
	response.sendRedirect(request.getContextPath()+"/singerList.jsp");
	System.out.println(singer + "<-- singer 출력확인");
	
	
	 %>