<!-- team27c 김재희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertActorForm.jsp</title>
</head>
<body>
		<h1>insertActorForm.jsp</h1>
			<!-- POST방식으로 폼에서 입력한 정보들을 insertActorAction.jsp로 넘겨준다. -->
			<form action="<%= request.getContextPath() %>/insertActorAction.jsp" method="post">
				<table border="1">
					<tr>
						<th>남배우이름</th>
						<td><input type="text" name="actorName" size="10"></td>
					</tr>
					<tr>
						<th>남배우나이</th>
						<td><input type="text" name="actorAge" size="10"></td>
					</tr>
					<tr>
						<th>Insert</th>
						<td><input type="submit" value="등록하기"></td>
					</tr>
				</table>
			</form>	
				
</body>
</html>