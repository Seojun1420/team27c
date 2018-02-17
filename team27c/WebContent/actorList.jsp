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

		<table border="1">
			<thead>Actor list
				<tr>
					<th>��ȣ</th>
		     		<th>����̸�</th>
		     		<th>��쳪��</th>
		  		</tr>
	  		</thead>
		<%		/* Actor����Ʈ�� list�� �������ְ� actorDao��ü���������� �ּҸ� ã�� selectActorList�� ������ ���ϵ�
				���� list�� �����Ѵ�. */
				ArrayList<Actor> list = actorDao.selectActorList();
				for(Actor actor : list) { 
		%>		
				<tr>
					<td><%=actor.getActorId() %></td> 
					<td><%=actor.getActorName() %></td>
					<td><%=actor.getActorAge() %></td>
				</tr>	
		<% 
			}
		%>
		</tabel>

</body>
</html>
