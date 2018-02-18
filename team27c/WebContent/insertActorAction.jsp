<!-- team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Actor" %>
<%@ page import = "service.ActorDao" %>
<!-- ������ GET�� POST ������� �Ķ���͸� �Ѱ� ���� �� request.setCharacterEncoding()�� ���� ���ڼ� ���ڵ��� �ʿ���-->
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertActorAction</title>
</head>
<body>
<%  
	/* ������ �Է¹��� actorName�� �Ű������� getParameter�޼��带 ������ StringŸ���� actorName������ �޴´�.
	���������� actorAge�� intŸ���� actorAge������ �޴´�*/
	String actorName = request.getParameter("actorName");
	int actorAge = Integer.parseInt(request.getParameter("actorAge"));
	System.out.println(actorName +"," + actorAge + "<--actorName, actorAge");
	
	/* Actor�� ��ü�� �����ϰ� ������ ��ü�� actor�� �ּҰ��� �Ҵ����ش�. 
	actor��ü���������� �ּҸ� ã�ư� actorName�� �Ű������� set�޼��带 ������ �������ش�. 
	���������� actorAge�� �����Ѵ�.*/
	Actor actor = new Actor();
	actor.setActorName(actorName);
	actor.setActorAge(actorAge);
	
	/* ActorDao��ü�� �����ϰ� ��ü�� �ּҰ��� actorDao�� �Ҵ����ش�.
	actorDao��ü���������� �ּҸ� ã�� actor�� �Ű������� insertActorList �޼��带 ���� */
	ActorDao actorDao = new ActorDao();
	actorDao.insertActorList(actor);
	System.out.println(actor + "<--actor");
	/* response���尴ü :  Ŭ���̾�Ʈ�� ���� ���� ó���� �ϴ� ��ü, �������� �������� �ǵ��� �� �� ����ϴ� ��ü 
	response��ü�� sendRedirect()�޼��带 ����Ͽ� �� ������ ���������� ������ �������� �̵��� �� ����Ѵ�. */
	response.sendRedirect(request.getContextPath() + "/actorList.jsp");		
%>
</body>
</html>