<%-- team27c �蹮��--%> 
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
/*�����Ҷ� �ʿ��������� updateActressFrom ���� �޾ƿ´�.  */
	int actressId = Integer.parseInt(request.getParameter("actressId"));
	String actressName = request.getParameter("actressName");
	int actressAge = Integer.parseInt(request.getParameter("actressAge"));
	System.out.println(actressName);
	System.out.println(actressAge);
	/*�޾ƿ� �������� actress ��ü�������������� set �����Ͽ�  �������ش�. */
	Actress actress = new Actress();
	actress.setActressId(actressId);
	actress.setActressName(actressName);
	actress.setActressAge(actressAge);
	/* actressDao ��ü���������� ���� �ּҸ�ã�ư� ActionUpdateActress �޼��带 �����ϰ�
	�Ű������� ������ �����س��� actress ��ü���������� �Ű������� ������.*/
	ActressDao actressDao = new ActressDao();
	actressDao.ActionUpdateActress(actress);

	response.sendRedirect(request.getContextPath()+"/actress/actressList.jsp");
%>
</body>
</html>