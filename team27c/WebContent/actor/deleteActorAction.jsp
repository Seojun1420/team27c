<!-- team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!-- ������ GET�� POST ������� �Ķ���͸� �Ѱ� ���� �� request.setCharacterEncoding()�� ���� ���ڼ� ���ڵ��� �ʿ���-->
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import = "service.ActorDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>deleteActorAction.jsp</title>
</head>
<body>	
	<%
		int actorId = Integer.parseInt(request.getParameter("actorId"));
		System.out.println(actorId + "<--actorId");
		ActorDao actorDao = new ActorDao();
		actorDao.deleteActor(actorId);
		response.sendRedirect(request.getContextPath() + "/actor/actorList.jsp");
	%>
</body>
</html>