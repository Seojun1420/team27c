<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import ="service.ComedianDao" %>
<%@ page import ="service.Comedian" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>deleteComedianAction</title>
</head>
<body>
	<%
		/* integer는 자바에서 String을 숫자 값으로 변형할 때 사용하며, 원시데이터가 필요하면 parseInt()를 사용. 
			integer는 자바에서 String을 숫자 값으로 변형할 때 사용하며, 원시데이터가 필요하면 parseInt()를 사용. */
		int comedianId = Integer.parseInt(request.getParameter("comedianId"));
		System.out.println(comedianId + "<- comedianId 출력확인");
		
		ComedianDao comediandao = new ComedianDao();
		comediandao.deleteComedian(comedianId);
		
		response.sendRedirect(request.getContextPath() + "/comedian/comedianList.jsp");
	
	%>
</body>
</html>