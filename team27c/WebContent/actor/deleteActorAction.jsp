<!-- team27c 김재희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!-- 폼에서 GET과 POST 방식으로 파라미터를 넘겨 받을 때 request.setCharacterEncoding()을 통한 문자셋 인코딩이 필요함-->
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