<!-- team27 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="service.AnaunseoDao"%>
<%@page import="service.Anaunseo"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Team27c</title>
</head>
<body>
	<h1>Actress Update Form</h1>
	<form action="<%=request.getContextPath()%>/anaunseo/updateAnaunseoAction.jsp" method="post">
		<table border="1">
			<thead>
				<tr>
					<th>�Ƴ����ȣ</th>
					<th>�Ƴ���̸�</th>
					<th>�Ƴ������</th>
				</tr>
			</thead>
			<%
				int anaunseoId = Integer.parseInt(request.getParameter("anaunseoId"));
				System.out.println(anaunseoId);
				AnaunseoDao anaunseoDao = new AnaunseoDao();
				Anaunseo anaunseo = new Anaunseo();
				anaunseo = anaunseoDao.selectUpdateAnaunnseo(anaunseoId);
			%>
			<tbody>
				<tr>
					<td><input type="text" name="anaunseoId"value="<%=anaunseo.getAnaunseoId()%>" readonly></td>
					<td><input type="text" name="anaunseoName"value="<%=anaunseo.getAnaunseoName()%>"></td>
					<td><input type="text" name="anaunseoAge"value="<%=anaunseo.getAnaunseoAge()%>"></td>
					<td><input type="submit" value="�����Ϸ�"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>