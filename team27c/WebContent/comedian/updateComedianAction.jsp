<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euckr");%>
<%@ page import="service.ComedianDao" %>
<%@ page import="service.Comedian" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>updateComedianAction</title>
</head>
<body>
<% 
	
	int comedianId = Integer.parseInt(request.getParameter("comedianId"));
	String comedianName = request.getParameter("comedianName");
	int comedianAge = Integer.parseInt(request.getParameter("comedianAge"));
	System.out.println(comedianName + "comedianName출력");
	System.out.println(comedianAge + "comedianAge출력");
	
	Comedian comedian = new Comedian();
	comedian.setComedianId(comedianId);
	comedian.setComedianName(comedianName);
	comedian.setComedianAge(comedianAge);
	
	ComedianDao comediandao = new ComedianDao();
	comediandao.updateComedianAction(comedian);
	
	response.sendRedirect(request.getContextPath() + "/comedian/comedianList.jsp");	
	
	
	
 %>

</body>
</html>