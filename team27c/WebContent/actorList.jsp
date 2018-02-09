<!-- team27c 김재희 -->
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
		ActorDao actorDao = new ActorDao();
		%>

		<table border="1">
			<thead>Actor list
				<tr>
					<th>번호</th>
		     		<th>배우이름</th>
		     		<th>배우나이</th>
		  		</tr>
	  		</thead>
		<%
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
