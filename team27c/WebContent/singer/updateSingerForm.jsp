<!-- team27c 왕서준  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="service.SingerDao" %>
<%@ page import="service.Singer" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Singer UPDATE Form</title>
</head>
<body>

		<h1> Singer UPDATE Form</h1>
		<form action="<%=request.getContextPath()%>/singer/singerList.jsp" method="post">
		<table border="1">
			<thead>
				<tr>
				<th>가수번호</th>
				<th>가수이름</th>
				<th>가수나이</th>
			</tr>
			<%
				int singerId = Integer.parseInt(request.getParameter("singerId"));
				System.out.println(singerId);
				SingerDao singerDao = new SingerDao();
				Singer singer = new Singer();
				singer = singerDao.selectSinger(singerId);
			%>
			<tbody>
					<tr>
				<td><input type="text" name="singerId" value="<%=singer.getSingerId() %>"readonly ></td>
				<td><input type="text" name="singerName" value="<%=singer.getSingerName() %>"></td>
				<td><input type="text" name="singerAge" value="<%=singer.getSingerAge() %>"></td>
				<td><input type="submit" value="수정"></td>
			</tr>
			</tbody>
		</table>
	</form>
</body>
</html>