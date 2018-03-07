<!-- team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertActorForm.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function () {
		$("#submit").click(function () {
			if($("#actorName") == "" || $("actorName").length <=1) {
				alert("������̸��� �Է����ּ���")
				return false;
			}
			
			if($("#actorAge") < 0 || $("#actorAge") > 100) {
				alert("���̸� ����� �Է����ּ���")
				return false;
			}
		});
	}); 
</script>
</head>
<body>
		<h1>insertActorForm.jsp</h1>
			<!-- POST������� ������ �Է��� �������� insertActorAction.jsp�� �Ѱ��ش�. -->
			<form action="<%= request.getContextPath() %>/actor/insertActorAction.jsp" method="post">
				<table border="1">
					<tr>
						<th>������̸�</th>
						<td><input type="text" name="actorName" id="actorName" size="10"></td>
					</tr>
					<tr>
						<th>����쳪��</th>
						<td><input type="text" name="actorAge" id="actorAge"size="10"></td>
					</tr>
					<tr>
						<th>Insert</th>
						<td><input type="submit" value="����ϱ�" id="submit"></td>
					</tr>
				</table>
			</form>	
				
</body>
</html>