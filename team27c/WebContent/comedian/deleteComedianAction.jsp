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
//JSP파일에서 인코딩부분에서 문제가 생기지 않도록 하기 위해서 작성
int comedianId = Integer.parseInt(request.getParameter("comedianId"));
System.out.println(comedianId + "<- comedianId 출력확인");

//comdiandao로 주소참조하여 DB를 연결시켜, 리턴시켜온다.
ComedianDao comediandao = new ComedianDao();
comediandao.deleteComedian(comedianId);


//처리과 완료되면, comedianList.jsp로 이동한다.
response.sendRedirect(request.getContextPath() + "/comedian/comedianList.jsp");

%>
</body>
</html>