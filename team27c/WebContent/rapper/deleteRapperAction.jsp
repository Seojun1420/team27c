<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@page import = "service.Rapper" %>
<%@page import = "service.RapperDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% //String ������ Member Id ���� sesion.getAttribute�� �̿��� (member_Id)�� �ִ�int �� ���� �ִ´�.
	String Member_Id = (String)session.getAttribute("member_Id");
	String Member_pw = (String)session.getAttribute("member_pw");
	System.out.println(Member_Id);
	System.out.println(Member_pw);
	//int �� rapper_Id �� String �� rapper_id �� Integer.parseInt�� �̿��Ͽ� int �� ���ĺ�ȯ �Ͽ� �־���.
	int rapperId=Integer.parseInt(request.getParameter("rapperId"));
	System.out.println(rapperId+"<--rapperId");
	//rapperDao ��ü���� �ϰ� rapperdao�� �ִ� �ּҸ� ã�ư��� deleteRapper�� ȣ�� rapperId���� �����ͼ� rapperList�� ������ ��Ų��.
	RapperDao rapperdao = new RapperDao();
	rapperdao.deleteRapper(rapperId);
	response.sendRedirect(request.getContextPath() + "/rapper/rapperList.jsp");
	%>

</body>
</html>