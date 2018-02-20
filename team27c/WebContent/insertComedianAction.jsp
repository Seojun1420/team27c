<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="service.ComedianDao" %>
<%@ page import ="service.Comedian" %>
<%@ page import = "java.util.ArrayList" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		//comdiandao로 주소참조하여 DB를 연결시켜, 리턴시켜온다.
		ComedianDao comediandao = new ComedianDao();
		comediandao.selectComedianList();
		
		//request에 할당된 주소값을 찾아가, getParameter("comedianName")을 겟팅해온다. 그리고 객체참조변수 comedian에 주소값을 저장한다.
		String comedianName = request.getParameter("comedianName");
		String comedianAge = request.getParameter("comedianAge");
		//출력을 확인하기 위한 장치
		System.out.println(comedianName + "<-comedianName");
		System.out.println(comedianAge+ "<-comedianAge");
		
		//form에서 작성한 comedian의 정보를 입력한다. 
		Comedian comedian = new Comedian();
		comedian.setComedianName(comedian.getComedianName());
		comedian.setComedianAge(comedian.getComedianAge());
		
		System.out.println(comedian + "<-- comedian 확인");
		
		
		
		
		
		%>


	</body>
</html>