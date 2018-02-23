<!-- team27c 김문기 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%@page import="service.ActressDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>deleteActressAction.jsp</title>
</head>
<body>
<%
	/*getParameter메서드 actressId를 actressList에서 가져온다.
	getParameter 값은 스트링으로 받아오기 때문에 Integer.ParseInt 메서드로 타입을
	int 로 바꾸어 준다. 다음 actressId변수에 초기화 해준다.*/
	int actressId= Integer.parseInt(request.getParameter("actressId"));
	System.out.println(actressId+":결과");
	/* deleteActress메서드를 실행 하고 매개변수로 actressId를 넘겨준다. */
	ActressDao act = new ActressDao();
	act.deleteActress(actressId);
	/*실행이 다 끝나고 나면 response.sendRedirect 메서드를 활용해 경로 지정한곳으로 돌아가준다.
	이메서드를 사용할때 주의할점을 찾아보니 맨마지막에 쓰는것이 올바른 사용법이라고 한다.
	그이유는 메서드가 중간에 있다면 그중간에서 끝나는것이 아니라 나머지 코드도 다실행하기 때문에 원하는 결과를
	얻디 못할수가 있다.*/
	response.sendRedirect(request.getContextPath()+"/actress/actressList.jsp");
%>
</body>
</html>