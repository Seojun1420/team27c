<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="service.RapperDao" %>
<%@page import="service.Rapper" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int rapperId = Integer.parseInt(request.getParameter("RapperId"));
	System.out.println(rapperId);
	
	RapperDao rapperDao = new RapperDao();
	Rapper rapper = rapperDao.selectUpdateRapper(rapperId);
%>

	<h1>Update Rapper Form</h1>
			<!-- POST방식으로 폼에서 입력한 정보들을 insertrapperAction.jsp로 넘겨준다. -->
			<form action="<%= request.getContextPath() %>/rapper/updateRapperAction.jsp" method="post">
				<input type="hidden" name="rapperId"value="<%=rapper.getRapperId() %>">
				<table border="1">
				
					<tr>
						<th>rapper Name</th>
						<td><input type="text" name="rapperName" value="<%=rapper.getRapperName() %>" size="10"></td>
					</tr>
					<tr>
						<th>rapper Age</th>
						<td><input type="text" name="rapperAge" value="<%=rapper.getRapperAge() %>" size="10"></td>
					</tr>
					<tr>
						<th>Update</th>
						<td><input type="submit" value="수정하기"></td>
					</tr>
				</table>
			</form>	
	
</body>
</html>