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
	<% //String 형식의 Member Id 값을 sesion.getAttribute를 이용해 (member_Id)에 있는int 형 값을 넣는다.
	String Member_Id = (String)session.getAttribute("member_Id");
	String Member_pw = (String)session.getAttribute("member_pw");
	System.out.println(Member_Id);
	System.out.println(Member_pw);
	//int 형 rapper_Id 에 String 형 rapper_id 를 Integer.parseInt를 이용하여 int 로 형식변환 하여 넣어줌.
	int rapperId=Integer.parseInt(request.getParameter("rapperId"));
	System.out.println(rapperId+"<--rapperId");
	//rapperDao 객체생성 하고 rapperdao에 있는 주소를 찾아가서 deleteRapper을 호출 rapperId값을 가져와서 rapperList로 리스폰 시킨다.
	RapperDao rapperdao = new RapperDao();
	rapperdao.deleteRapper(rapperId);
	response.sendRedirect(request.getContextPath() + "/rapper/rapperList.jsp");
	%>

</body>
</html>