<!-- team27c �ռ���  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>SingerUPDATEForm.jsp</title>
</head>
<body>

		<h1> Singer UPDATE List</h1>
		<!-- POST������� ������ �Է��� �������� updateSingerAction.jsp�� �Ѱ��ش�. -->
		<form action="<%=request.getContextPath()%>/updateSingerAction.jsp" method="post">
		<table border="1">
			<tr>
				<th>�����̸�</th>
				<td><input type="text" name="singerName" size="10"></td>
			<tr>
			<tr>
				<th>��������</th>
				<td><input type="text" name="singerAge" size="10"></td>
			<tr>
			<tr>
				<th> Update </th>
				<td><input type="submit" value="�����ϱ�"></td>
			</tr>
		</table>
	</form>
</body>
</html>