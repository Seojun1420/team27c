<!-- team27c �蹮�� -->
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
	/*getParameter�޼��� actressId�� actressList���� �����´�.
	getParameter ���� ��Ʈ������ �޾ƿ��� ������ Integer.ParseInt �޼���� Ÿ����
	int �� �ٲپ� �ش�. ���� actressId������ �ʱ�ȭ ���ش�.*/
	int actressId= Integer.parseInt(request.getParameter("actressId"));
	System.out.println(actressId+":���");
	/* deleteActress�޼��带 ���� �ϰ� �Ű������� actressId�� �Ѱ��ش�. */
	ActressDao act = new ActressDao();
	act.deleteActress(actressId);
	/*������ �� ������ ���� response.sendRedirect �޼��带 Ȱ���� ��� �����Ѱ����� ���ư��ش�.
	�̸޼��带 ����Ҷ� ���������� ã�ƺ��� �Ǹ������� ���°��� �ùٸ� �����̶�� �Ѵ�.
	�������� �޼��尡 �߰��� �ִٸ� ���߰����� �����°��� �ƴ϶� ������ �ڵ嵵 �ٽ����ϱ� ������ ���ϴ� �����
	��� ���Ҽ��� �ִ�.*/
	response.sendRedirect(request.getContextPath()+"/actress/actressList.jsp");
%>
</body>
</html>