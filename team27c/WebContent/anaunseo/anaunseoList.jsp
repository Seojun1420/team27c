<!-- team27 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="service.AnaunseoDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="service.Anaunseo" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title>AnaunseoList</title>
</head>
<body>
<%
	String sId=(String)(session.getAttribute("sId"));	
%>
	<h1>Anaunseo List</h1>
		<table border="1">
			<thead>			
				<tr>
					<th>�Ƴ����ȣ</th>
					<th>�Ƴ���̸�</th>
					<th>�Ƴ������</th>
					<%
						if(sId != null) {
							%>
								<th>����</th>
								<th>����</th>
							<% 
						}
					%>

				</tr>
			</thead>
		<%
			AnaunseoDao anaunseo = new AnaunseoDao();
			/* anaunseo �Ҵ�� �������� ã�ư� selectAnaunseoList() 
			�޼��带 ������  �޼��� ȣ���� ������ return�� �ް� �װ���
			ArrayList<Anaunseo>Ÿ���� list�� �Ҵ�����
			for���� ���� ���ʴ�� ����Ѵ�. */
		 
			ArrayList<Anaunseo> list = anaunseo.selectAnaunseoList();		
			for(Anaunseo ana : list) {
		%> 
				<tr>
					<td><%= ana.getAnaunseoId() %></td>
					<td><%= ana.getAnaunseoName() %></td>
					<td><%= ana.getAnaunseoAge() %></td>
										<%
						if(sId != null) {
							%>
								<td><a href="<%= request.getContextPath() %>/anaunseo/updateAnaunseoForm.jsp?anaunseoId=<%= ana.getAnaunseoId()%>">����</a></td>
								<td><a href="<%= request.getContextPath() %>/anaunseo/deleteAnaunseoAction.jsp?anaunseoId=<%= ana.getAnaunseoId()%>">����</a></td>
							<% 
						}
					%>
					
				</tr>
		<%
			}
		%>	
		</table>
		<br>
		<a href="<%= request.getContextPath() %>/index.jsp">Ȩ���� ���ư���</a>
		<br>
<%
								if(sId != null) {
							%>
										<a href="<%= request.getContextPath() %>/anaunseo/insertAnaunserForm.jsp">�Ƴ������Ʈ ����ϱ�</a>
							<% 
						}
					%>
</body>
</html>