<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="service.AnaunseoDao" %>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>

<%
	int anaunseoId = Integer.parseInt(request.getParameter("anaunseoId"));
	System.out.println(anaunseoId+"<-- anaunseoId");
	AnaunseoDao anaunseodao = new AnaunseoDao();
	anaunseodao.deleteAnaunseoList(anaunseoId);
	
	response.sendRedirect(request.getContextPath()+"/anaunseoList.jsp");
%>