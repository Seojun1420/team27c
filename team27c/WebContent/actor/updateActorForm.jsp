<!-- team27c 김재희 -->
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
	/* Integer.parseInt(String) : 문자열을 int값으로 변환한다.
	request.getParameter() : 이 메서드는 HTTP요청의 파라미터 값을 얻기 위한 메서드이다. */
	int actorId = Integer.parseInt(request.getParameter("actorId"));
	System.out.println(actorId + "<--actorId");
	ActorDao actorDao = new ActorDao();
	Actor actor = actorDao.selectUpdateActor(actorId);
%>
	<form action="<%= request.getContextPath() %>/actor/updateActorAction.jsp" method="post">
		<h1>Actor list</h1>
			<table border="1">  	
		  			<tr>
		  				<th>남배우번호</th>
						<td><input type="text" name="actorId" size=10 value="<%= actor.getActorId() %>" readonly></td> 
					</tr>
					<tr>
						<th>남배우이름</th>
						<td><input type="text" name="actorName" size=10 value="<%= actor.getActorName() %>"></td>
					</tr>
					<tr>
						<th>남배우나이</th> 	
						<td><input type="text" name="actorAge" size=10 value="<%= actor.getActorAge() %>"></td>
					</tr>
					<tr>
						<th>Update</th>
						<td><input type="submit" value="수정하기"></td>
					</tr>
		  	</table>
	</form>
</body>
</html>