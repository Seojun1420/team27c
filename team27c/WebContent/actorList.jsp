<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import = "service.ActorDao" %>
<%@ page import = "service.Actor" %>
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
	Actor actor = new Actor();
	ArrayList<Actor> arrlist = new ArrayList<Actor>(); 
	arrlist = actorDao.selectActorList();
%>

	<table border="1">
			<tr>
	     	 	 <th>번호</th>
	     		 <th>배우이름</th>
	     		 <th>배우나이</th>
	  		</tr>
			<tr>
				<td>id</td>
				<td>name</td>
				<td>age</td>
			</tr>	
<%
				for(int i=0; i<arrlist.size(); i++){
					actor = arrlist.get(i);
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
