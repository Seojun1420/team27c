<!-- team27c �Ӱ��� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Rapper" %>
<%@ page import = "service.RapperDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>ComedianList</title>
</head>
<body>
		<%
			RapperDao rapperDao = new RapperDao();//comedian ��ü�������� ����
		%>
			<h1>RapperList</h1>
			<table border = "1"> <!-- ǥ ���� -->
				<thead>
					<%
						if(session.getAttribute("sId") != null) {
					%>
					<tr>
						<td>���ۼ���</td>
						<td>�����̸�</td>
						<td>���۳���</td>
						<td>����</td>
						<td>����</td>
					</tr>
					<% 
					}else{
					%>
					<tr>
						<td>���ۼ���</td>
						<td>�����̸�</td>
						<td>���۳���</td>
					</tr>
					<%
					}
					%>
				</thead>
		<%
			// comedian�� ��� �ּҰ��� ã�ư�, selectComedianList�� ȣ��, �������� �� arrList�� ��´�.
			ArrayList<Rapper> arrayList = rapperDao.selectRapperList();
			for(Rapper rapper : arrayList) {
		%>
					<%
						if(session.getAttribute("sId") != null) {
					%>
				<tr>
					<td><%= rapper.getRapperId() %></td>
					<td><%= rapper.getRapperName() %></td>
					<td><%= rapper.getRapperAge() %></td>
					<!-- 
						request.getParameter("comedianId")
						�����׼� : Delete from comedian where comedian_id=?
						�����׼� : update comedian set comedian_name=?, comedian_age=? where comedian_id=?  
						������ : Select *form comedian where comedian_id=? -->
					<td><a href="<%= request.getContextPath() %>/rapper/updateRapperForm.jsp?RapperId=<%=rapper.getRapperId()%>">����</a></td>
					<td><a href="<%= request.getContextPath() %>/rapper/deleteRapperAction.jsp?RapperId=<%=rapper.getRapperId()%>">����</a></td>
				</tr>
				<%
				}else{
				%>	
				<tr>
					<td><%= rapper.getRapperId() %></td>
					<td><%= rapper.getRapperName() %></td>
					<td><%= rapper.getRapperAge() %></td>
				</tr>	
		<%
				}
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
				<%
				if(session.getAttribute("sId") != null) {
				%>
				<tr>
					<a href="<%= request.getContextPath() %>/rapper/insertRapperForm.jsp">����Ʈ����ϱ�</a>
				</tr>
				<%
				}else{
				}
				
				%>
		</table>	
</body>
</html>