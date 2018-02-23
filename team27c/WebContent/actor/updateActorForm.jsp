<!-- team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.ActorDao" %>
<%@ page import = "service.Actor" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>updateActorForm.jsp</title>
</head>
<body>
<%	
	/* Integer.parseInt(String) : ���ڿ��� int������ ��ȯ�Ѵ�.
	request.getParameter() : �� �޼���� HTTP��û�� �Ķ���� ���� ��� ���� �޼����̴�. */
	int actorId = Integer.parseInt(request.getParameter("actorId"));
	System.out.println(actorId + "<--actorId");
	ActorDao actorDao = new ActorDao();
	Actor actor = actorDao.selectUpdateActor(actorId);
%>
	<form action="<%= request.getContextPath() %>/actor/updateActorAction.jsp" method="post">
		<h1>Actor list</h1>
			<table border="1">  	
		  			<tr>
		  				<th>������ȣ</th>
						<td><input type="text" name="actorId" size=10 value="<%= actor.getActorId() %>" readonly></td> 
					</tr>
					<tr>
						<th>������̸�</th>
						<td><input type="text" name="actorName" size=10 value="<%= actor.getActorName() %>"></td>
					</tr>
					<tr>
						<th>����쳪��</th> 	
						<td><input type="text" name="actorAge" size=10 value="<%= actor.getActorAge() %>"></td>
					</tr>
					<tr>
						<th>Update</th>
						<td><input type="submit" value="�����ϱ�"></td>
					</tr>
		  	</table>
	</form>
</body>
</html>