<!-- team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertActionForm</title>
</head>
<body>
		<h1>Insert Actor Form</h1>
			<!-- POST������� ������ �Է��� �������� insertActorAction.jsp�� �Ѱ��ش�. -->
			<form action="<%= request.getContextPath() %>/insertActorAction.jsp" method="post">
				<table border="1">
					<tr>
						<th>actor Name</th>
						<td><input type="text" name="actorName" size="10"></td>
					</tr>
					<tr>
						<th>actor Age</th>
						<td><input type="text" name="actorAge" size="10"></td>
					</tr>
					<tr>
						<th>Insert</th>
						<td><input type="submit" value="����ϱ�"></td>
					</tr>
				</table>
			</form>	
				
</body>
</html>