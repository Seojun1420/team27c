<!-- team27c �蹮�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>

<!--jsp:useBean ���ڹ� ��ü�� �����ϰų� ������ �̹� ������� ��ü�� �����Ѵ�.
 jsp���� �ڹ������� �̿��ϱ� ���ؼ��� useBean �±׸� �̿��ؼ� ���� ��ü�� �������־���� ����� �����ϴ�.
 ������ ��ü�� id �� a �̴�. jsp:setProperty��  ������ �ڹٺ� ��ü�� ������Ƽ ���� �����ϱ� ���� ���ȴ�
 name �Ӽ��� �ڹٺ� ��ü�� �̸��� ����Ѵ�. property �Ӽ��� ������Ƽ ���� ����Ѵ�.
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
	/* actressDao Ŭ����Ÿ���� ���� actressDao �� �����ϰ� �ּҸ� �Ҵ�޴´�
	actressDao ������ Ȱ���� ������ ��ü�� �����ϰ�  �����Ѱ��� insertActress �޼��带 �����ϸ� �Ű�������
	Actress Ŭ������ ���� a �� �Ѱ��ش�*/
	ActressDao actressDao = new ActressDao();
	actressDao.insertActress(a);
	
	response.sendRedirect(request.getContextPath()+"/actress/actressList.jsp");
%>
</body>
</html>