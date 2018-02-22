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
	<h1>Anaunseo List</h1>
		<table border="1">
			<thead>			
				<tr>
					<th>�Ƴ����ȣ</th>
					<th>�Ƴ���̸�</th>
					<th>�Ƴ������</th>
				</tr>
			</thead>
		<%
			/* AnaunseoDao Ŭ������ selectAnaunseoList �޼��带 ȣ���ϱ� ���� 
			new AnaunseoDao()�� ���� ��ü�� �������ְ� �������� AnaunseoDao Ŭ���� Ÿ���� 
			anaunseo ��ü ���������� �Ҵ��Ѵ�. */
		 
			ArrayList<Anaunseo> list = new ArrayList<Anaunseo>();
			AnaunseoDao anaunseo = new AnaunseoDao();
			/* anaunseo �Ҵ�� �������� ã�ư� selectAnaunseoList() 
			�޼��带 ������  �޼��� ȣ���� ������ return�� �ް� �װ���
			ArrayList<Anaunseo>Ÿ���� list�� �Ҵ�����
			for���� ���� ���ʴ�� ����Ѵ�. */
		 
			list = anaunseo.selectAnaunseoList();		
			for(Anaunseo ana : list) {
		%> 
				<tr>
					<td><%= ana.getAnaunseoId() %></td>
					<td><%= ana.getAnaunseoName() %></td>
					<td><%= ana.getAnaunseoAge() %></td>
				</tr>
		<%
			}
		%>	
		</table>
		<br>
		<a href="<%= request.getContextPath() %>/index.jsp">Ȩ���� ���ư���</a>
		<br>
		<a href="<%= request.getContextPath() %>/insertAnaunserForm.jsp">�Ƴ������Ʈ ����ϱ�</a>
	</body>
</html>