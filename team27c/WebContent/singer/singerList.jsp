<!-- team27c �ռ��� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "service.Singer" %>
<%@ page import = "service.SingerDao" %>
<!DOCTYPE html>
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title>Insert title here</title> 
</head>
<body>
<%
	SingerDao singer = new SingerDao();
	ArrayList<Singer> arraySinger = singer.selectSingerList();
	if(session.getAttribute("sId") == null){	
%>
	<h1> Singer List</h1>
	<table border="1">
	<a href="<%= request.getContextPath() %>/index.jsp">Ȩ����</a>
		<thead>
			<tr>
				<td>������ȣ</td>
				<td>�����̸�</td>
				<td>��������</td>
				<td>����</td>
				<td>����</td>
			</tr>	
		</thead>
		<tbody>
			<%
				for(Singer s : arraySinger){
			%>
				<tr>
					<td><%= s.getSingerId() %></td>
					<td><%= s.getSingerName() %></td>
					<td><%= s.getSingerAge() %></td>
					
				
				</tr>
		<%
				}
		} else {	
		%>
		</table>
		
	
	<h1> Singer List</h1>
		<a href="<%= request.getContextPath() %>/index.jsp">Ȩ����</a>
		<a href="<%= request.getContextPath() %>/singer/insertSingerForm.jsp"> ����ϱ� </a>
	<table border="1">
		<thead>
			<tr>
				<td>������ȣ</td>
				<td>�����̸�</td>
				<td>��������</td>
				<td>����</td>
				<td>����</td>
			</tr>	
		</thead>
		<tbody>
			<%
			for(Singer s : arraySinger){
			%>
			<tr>
				<td><%= s.getSingerId() %></td>
				<td><%= s.getSingerName() %></td>
				<td><%= s.getSingerAge() %></td>
				<td><a href="<%= request.getContextPath() %>/singer/updateSingerForm.jsp?singerId=<%= s.getSingerId()%>">����</a></td>
				<td><a href="<%= request.getContextPath() %>/singer/deleteSingerAction.jsp?singerId=<%=s.getSingerId()%>">����</a></td>
			</tr>
			
	</tbody>

<%
		}
	}
%>
	</table>

		
	</body>
	</html>

	
	