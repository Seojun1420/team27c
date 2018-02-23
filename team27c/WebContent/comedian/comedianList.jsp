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
			<h1>ComedianList</h1>
			<table border = "1">
				<thead>
					<%
						if(session.getAttribute("sId") != null) {
					%>
					<tr>
						<td>comedian Id</td>
						<td>comedian Name</td>
						<td>comedian Age</td>
						<td>����</td>
						<td>����</td>
					</tr>
					<% 
					}else{
					%>
						<td>comedian Id</td>
						<td>comedian Name</td>
						<td>comedian Age</td>
				<%
					}
				%>
				</thead>
				
			<%
				// comedian�� ��� �ּҰ��� ã�ư�, selectComedianList�� ȣ��, �������� �� arrList�� ��´�.
				ArrayList<Comedian> arrayList = comediandao.selectComedian();
				for(Comedian comedian : arrayList) {
			%>
				<tbody>
					<tr>
						<%
							if(session.getAttribute("sId") != null) {
						%>
						<td><%= comedian.getComedianId() %></td>
						<td><%= comedian.getComedianName() %></td>
						<td><%= comedian.getComedianAge() %></td>
						<!-- 
							request.getParameter("comedianId")
							�����׼� : Delete from comedian where comedian_id=?
							�����׼� : update comedian set comedian_name=?, comedian_age=? where comedian_id=?  
							������ : Select *form comedian where comedian_id=? 
						-->
						<td><a href="<%= request.getContextPath() %>/comedian/updateComedianForm.jsp?comedianId=<%=comedian.getComedianId()%>">����</a></td>
						<td><a href="<%= request.getContextPath() %>/comedian/deleteComedianAction.jsp?comedianId=<%=comedian.getComedianId()%>">����</a></td>
					</tr>
				<%
					}else{
				%>
					<td><%= comedian.getComedianId() %></td>
					<td><%= comedian.getComedianName() %></td>
					<td><%= comedian.getComedianAge() %></td>
				<%
						}
					}
				%>
		
				
				
		</table>
		<br>
			<a href="<%= request.getContextPath() %>/index.jsp">Ȩ����</a>
			<br>
			<%
				if(session.getAttribute("sId") != null) {
			%>
			<a href="<%= request.getContextPath() %>/comedian/insertComedianForm.jsp">����Ʈ����ϱ�</a>
			<%
				}else{
			}
			%>
	</body>
</html>