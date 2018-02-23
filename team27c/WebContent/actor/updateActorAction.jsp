<!-- team27c 김재희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import = "service.ActorDao" %>
<%@ page import = "service.Actor" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>updateActorAction.jsp</title>
</head>
<body>
<%	
	/* Integer.parseInt(String) : 문자열을 int값으로 변환한다. */
	int actorId = Integer.parseInt(request.getParameter("actorId"));
	String actorName = request.getParameter("actorName");
	int actorAge = Integer.parseInt(request.getParameter("actorAge"));
	System.out.println(actorName + "," + actorAge + "<-- actorName, actorAge");
	
	/* Integer.parseInt(String) : 문자열을 int값으로 변환한다. */
	Actor actor = new Actor();
	actor.setActorId(actorId);
	actor.setActorName(actorName);
	actor.setActorAge(actorAge);
	
	ActorDao actorDao = new ActorDao();
	actorDao.actionUpdateActor(actor);
	
	response.sendRedirect(request.getContextPath() + "/actor/actorList.jsp");		
%>
</body>
</html>