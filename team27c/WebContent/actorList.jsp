<!-- team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Actor" %>
<%@ page import = "service.ActorDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>ActorList</title>
</head>
<body>
		<%
		ActorDao actorDao = new ActorDao(); // ActorDao�� ��ü�� �����Ͽ� ��ü�������� actorDao�� ��ü�� �ּҸ� �Ҵ��Ѵ�
		%>
		<h1>Actor list</h1>
		<table border="1">
			<thead> 
				<tr>
					<th>������ȣ</th>
		     		<th>������̸�</th>
		     		<th>����쳪��</th>
		     		<th>����</th>
		     		<th>����</th> 
		  		</tr>
	  		</thead>
	  		<tbody>
		<%		/* Actor����Ʈ�� list�� �������ְ� actorDao��ü���������� �ּҸ� ã�� selectActorList�� ������ ���ϵ�
				���� list�� �����Ѵ�. */
				ArrayList<Actor> list = actorDao.selectActorList();
				for(Actor actor : list) { 
		%>		
				<tr>
					<td><%=actor.getActorId() %></td> 
					<td><%=actor.getActorName() %></td>
					<td><%=actor.getActorAge() %></td>
					<!-- request.getParameter("actorId") -->
					<!-- 
						������
						SELECT * FROM actor WHERE actor_id = ?
						�����׼�
						UPDATE actor SET actor_name=?, actor_age=?, WHERE actor_id=?
						�����׼�
						DELETE FROM actor WHERE actor_id=?
					 -->
					<td><a href="updateActorForm.jsp?actorId=<%=actor.getActorId()%>">����</a></td>
					<td><a href="deleteActorAction.jsp?actorId=<%=actor.getActorId()%>">����</a></td>
				</tr>
		<% 
			}
		%>
			</tbody>	
		</table>
		<br>
					<a href="<%= request.getContextPath() %>/index.jsp">Ȩ���� ���ư���</a>
					<br>
					<a href="<%= request.getContextPath() %>/insertActorForm.jsp">����츮��Ʈ ����ϱ�</a>
</body>
</html>
