<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="service.RapperDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% //한국어 사용가능하게 해줌.
	request.setCharacterEncoding("euckr");
	//int 형식의 rapperId에 String 형식의 request.getParamter한다rapperID(String 형식) Integer.parseInt를 통해 int 형으로 변환한다.
	int rapperId = Integer.parseInt(request.getParameter("rapperId"));
	String rapperName = request.getParameter("rapperName");
	int rapperAge = Integer.parseInt(request.getParameter("rapperAge"));
	//rapperId값을  받아온다.
	request.getParameter("rapperId");
	request.getParameter("rapperName");
	request.getParameter("rapperAge");
	//dao 객체생성 하고 db와 rapperId,rapperName,rapperAge 값과 입력받은 값을 비교한다.
	RapperDao rapperDao = new RapperDao();
	rapperDao.UpdateRapper(rapperId, rapperName, rapperAge);
	//실행결과를 입력받아서 그 값을 입력하고 다시 list로 돌려준다.
	response.sendRedirect(request.getContextPath() + "/rapper/rapperList.jsp");	
	
	
	
	
	
	
 %>

</body>
</html>