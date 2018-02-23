<!-- team27c 김문기 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>

<!--jsp:useBean 은자바 객체를 생성하거나 기존에 이미 만들어진 객체를 리턴한다.
 jsp에서 자바파일을 이용하기 위해서는 useBean 태그를 이용해서 먼저 객체를 생성해주어야지 사용이 가능하다.
 생성된 객체의 id 는 a 이다. jsp:setProperty은  생성된 자바빈 객체에 프로퍼티 값을 저장하기 위해 사용된다
 name 속성은 자바빈 객체의 이름을 명시한다. property 속성은 프로퍼티 명을 기술한다.
-->
<jsp:useBean id="a" class="service.Actress"/>
<jsp:setProperty name="a" property="*"/>
<%@page import="service.ActressDao" %>
<%@page import="service.Actress" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>team27</title>
</head>
<body>

<% 
	/* actressDao 클래스타입의 변수 actressDao 를 선언하고 주소를 할당받는다
	actressDao 변수를 활용해 생성된 객체에 접근하고  접근한곳에 insertActress 메서드를 실행하며 매개변수로
	Actress 클래스의 변수 a 를 넘겨준다*/
	ActressDao actressDao = new ActressDao();
	actressDao.insertActress(a);
	
	response.sendRedirect(request.getContextPath()+"/actress/actressList.jsp");
%>
</body>
</html>