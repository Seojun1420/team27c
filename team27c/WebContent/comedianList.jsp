<!-- team27c �Ӱ��� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Comedian" %>
<%@ page import = "service.ComedianDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>ActorList</title>
</head>
<body>
		<%
			ComedianDao comediandao = new ComedianDao();//comedian ��ü�������� ����
		%>
			<h1>ComedianList.jsp</h1>
			<table border = "1"> <!-- ǥ ���� -->
				<thead>
					<tr>
						<td>comedian Id</td>
						<td>comedian Name</td>
						<td>comedian Age</td>
					</tr>
				</thead>
		<%
			// comedian�� ��� �ּҰ��� ã�ư�, selectComedianList�� ȣ��, �������� �� arrList�� ��´�.
			ArrayList<Comedian> arrayList = comediandao.selectComedianList();
			for(Comedian comedian : arrayList) {
		%>
				<tr>
					<td><%= comedian.getComedianId() %></td>
					<td><%= comedian.getComedianName() %></td>
					<td><%= comedian.getComedianAge() %></td>
				</tr>
		<%
			}
		%>
				
		</table>
		<br>
		<table>
				<tr>
					<a href="<%= request.getContextPath() %>/index.jsp">Ȩ����</a>
				</tr>
				<tr>
				<br>
				</tr>
				<tr>
					<a href="<%= request.getContextPath() %>/insertComedianForm.jsp">����Ʈ����ϱ�</a>
				</tr>
		</table>	
</body>
</html>