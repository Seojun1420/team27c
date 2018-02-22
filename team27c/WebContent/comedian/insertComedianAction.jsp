<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="service.ComedianDao" %>
<%@ page import ="service.Comedian" %>
<% request.setCharacterEncoding("euc-kr"); %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>insertComedianAction</title>
	</head>
	<body>
		<%
		//request에 할당된 주소값을 찾아가, getParameter("comedianName")을 겟팅해온다. 그리고 객체참조변수 comedian에 주소값을 저장한다.
		String comedianName = request.getParameter("comedianName");
		int comedianAge = Integer.parseInt(request.getParameter("comedianAge"));
		//출력을 확인하기 위한 장치
		System.out.println(comedianName + "<-comedianName");
		System.out.println(comedianAge+ "<-comedianAge");
		
		/* Comedian 생성자 매서드를 생성하고, comedian객체참조볁수에 주소값을 할당한다. 
		comedian에 할당된 주소를 찾아가 ComedianName과 ComedianAge을 매개변수로 set메서드를 실행,셋팅한다.*/
		Comedian comedian = new Comedian();
		comedian.setComedianName(comedianName);
		comedian.setComedianAge(comedianAge);
		//출력물 확인
		System.out.println(comedian + "<-- comedian 확인");
		
		//comdiandao로 주소참조하여 DB를 연결시켜, 리턴시켜온다.
		ComedianDao comediandao = new ComedianDao();
		comediandao.insertComedian(comedian);
		//출력물 확인
		System.out.println(comedian + "<-- comedian 확인");
		/* response내장객체 :  클라이언트에 대한 응답 처리를 하는 객체, 실행결과를 브라우저로 되돌려 줄 때 사용하는 객체이다.*/
		response.sendRedirect(request.getContextPath() + "/comedian/comedianList.jsp");
		%>
		
		
		
		%>


	</body>
</html>