<%-- team27c 김문기--%> 
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<%@page import="service.ActressDao" %>
<%@page import="service.Actress" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>updateActressAction</title>
</head>
<body>
<%
/*수정할때 필요한정보를 updateActressFrom 에서 받아온다.  */
	int actressId = Integer.parseInt(request.getParameter("actressId"));
	String actressName = request.getParameter("actressName");
	int actressAge = Integer.parseInt(request.getParameter("actressAge"));
	System.out.println(actressName);
	System.out.println(actressAge);
	/*받아온 정보들을 actress 객체참조변수를통해 set 접근하여  셋팅해준다. */
	Actress actress = new Actress();
	actress.setActressId(actressId);
	actress.setActressName(actressName);
	actress.setActressAge(actressAge);
	/* actressDao 객체참조변수를 통해 주소를찾아가 ActionUpdateActress 메서드를 실행하고
	매개변수로 위에서 셋팅해놓은 actress 객체참조변수를 매개변수로 보낸다.*/
	ActressDao actressDao = new ActressDao();
	actressDao.ActionUpdateActress(actress);

	response.sendRedirect(request.getContextPath()+"/actress/actressList.jsp");
%>
</body>
</html>