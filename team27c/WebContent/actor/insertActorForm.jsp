<!-- team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertActorForm.jsp</title>
</head>
<body>
		<h1>insertActorForm.jsp</h1>
			<!-- POST������� ������ �Է��� �������� insertActorAction.jsp�� �Ѱ��ش�. -->
			<form action="<%= request.getContextPath() %>/insertActorAction.jsp" method="post">
				<table border="1">
					<tr>
						<th>������̸�</th>
						<td><input type="text" name="actorName" size="10"></td>
					</tr>
					<tr>
						<th>����쳪��</th>
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