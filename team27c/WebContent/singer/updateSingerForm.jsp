<!-- team27c 왕서준  -->
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
		<!-- POST방식으로 폼에서 입력한 정보들을 updateSingerAction.jsp로 넘겨준다. -->
		<form action="<%=request.getContextPath()%>/updateSingerAction.jsp" method="post">
		<table border="1">
			<tr>
				<th>가수이름</th>
				<td><input type="text" name="singerName" size="10"></td>
			<tr>
			<tr>
				<th>가수나이</th>
				<td><input type="text" name="singerAge" size="10"></td>
			<tr>
			<tr>
				<th> Update </th>
				<td><input type="submit" value="수정하기"></td>
			</tr>
		</table>
	</form>
</body>
</html>