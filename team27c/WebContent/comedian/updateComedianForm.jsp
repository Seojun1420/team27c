<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="service.ComedianDao" %>
<%@ page import="service.Comedian" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>updateComedianForm</title>

</head>
<body>
<h1>updateComedianForm</h1>

	<%
		int comedianId = Integer.parseInt(request.getParameter("comedianId"));
		System.out.println(comedianId + "<--comdedianId");
		
		ComedianDao comediandao = new ComedianDao();
		Comedian comedian = comediandao.selectupdateComedian(comedianId);
	%>
	<form action="<%=request.getContextPath()%>/comedian/updateComedianAction.jsp" method="post">
			<table border="1">
				<tr>
					<td>comedian id</td>
					<td><input type="text" name="comedianId" value="<%=comedian.getComedianId()%>" readonly></td>
				</tr>
				<tr>
					<td>comedian Name</td>
					<td><input type="text" name="comedianName" value="<%=comedian.getComedianName()%>"></td>
				</tr>
				<tr>
					<td>comedian Age</td>
					<td><input type="text" name="comedianAge" value="<%=comedian.getComedianAge()%>"></td>
				</tr>
				<tr>
					<td><input type="submit" value="수정하기"></td>
				</tr>
			</table>
		</form>
</body>
</html>