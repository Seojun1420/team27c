<!-- team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import = "service.Actor" %>
<%@ page import = "service.ActorDao" %>
<%@ page import = "java.util.ArrayList" %>
<% request.setCharacterEncoding("euc-kr"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%
		
		ActorDao actorDao = new ActorDao();
	%>

	<table border="1">
			<tr>
	     	 	 <th>��ȣ</th>
	     		 <th>����̸�</th>
	     		 <th>��쳪��</th>
	  		</tr>
	<%
					
					ArrayList<Actor> list = actorDao.selectActorList();
					for(Actor actor : list) { 
	%>		
			<tr>
				<td><%= actor.getActorId() %></td>
				<td><%= actor.getActorName() %></td>
				<td><%= actor.getActorAge() %></td>
			</tr>	
	<% 
		}
	%>

	</tabel>

</body>
</html>
