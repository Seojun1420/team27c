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
		ActorDao actorDao = new ActorDao(); // ActorDao의 객체를 생성하여 객체참조변수 actorDao에 객체의 주소를 할당한다
		%>

		<table border="1">
			<thead>Actor list
				<tr>
					<th>번호</th>
		     		<th>배우이름</th>
		     		<th>배우나이</th>
		  		</tr>
	  		</thead>
		<%		/* Actor리스트를 list로 선언해주고 actorDao객체참조변수의 주소를 찾아 selectActorList를 실행해 리턴된
				값을 list에 저장한다. */
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
