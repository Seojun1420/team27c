<!-- team27c �Ӱ��� -->
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
//JSP���Ͽ��� ���ڵ��κп��� ������ ������ �ʵ��� �ϱ� ���ؼ� �ۼ�
int comedianId = Integer.parseInt(request.getParameter("comedianId"));
System.out.println(comedianId + "<- comedianId ���Ȯ��");

//comdiandao�� �ּ������Ͽ� DB�� �������, ���Ͻ��ѿ´�.
ComedianDao comediandao = new ComedianDao();
comediandao.deleteComedian(comedianId);


//ó���� �Ϸ�Ǹ�, comedianList.jsp�� �̵��Ѵ�.
response.sendRedirect(request.getContextPath() + "/comedian/comedianList.jsp");

%>
</body>
</html>