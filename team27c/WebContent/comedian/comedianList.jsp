<!-- team27c �Ӱ��� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Comedian" %>
<%@ page import = "service.ComedianDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>ComedianList</title>
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
						<td>����</td>
						<td>����</td>
					</tr>
				</thead>
		<%
			// comedian�� ��� �ּҰ��� ã�ư�, selectComedianList�� ȣ��, �������� �� arrList�� ��´�.
			ArrayList<Comedian> arrayList = comediandao.selectComedian();
			for(Comedian comedian : arrayList) {
		%>
				<tr>
					<td><%= comedian.getComedianId() %></td>
					<td><%= comedian.getComedianName() %></td>
					<td><%= comedian.getComedianAge() %></td>
					<!-- request.ge
					tParameter("comedianId")
						�����׼� : Delete from comedian where comedian_id=?
						�����׼� : update comedian set comedian_name=?, comedian_age=? where comedian_id=?  
						������ : Select *form comedian where comedian_id=? -->
					<td><a href="<%= request.getContextPath() %>/comedian/updateComedianForm.jsp?comedianId=<%=comedian.getComedianId()%>">����</a></td>
					<td><a href="<%= request.getContextPath() %>/comedian/deleteComedianAction.jsp?comedianId=<%=comedian.getComedianId()%>">����</a></td>
				</tr>
		<%
			}
		%>
				
		</table>
		<br>
		<table>
				<tr>
					<a href="<%= request.getContextPath() %>/comedian/index.jsp">Ȩ����</a>
				</tr>
				<tr>
				<br>
				</tr>
				<tr>
					<a href="<%= request.getContextPath() %>/comedian/insertComedianForm.jsp">����Ʈ����ϱ�</a>
				</tr>
		</table>	
</body>
</html>