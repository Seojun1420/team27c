<!-- team27c �Ӱ��� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Comedian" %>
<%@ page import = "service.ComedianDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html >

	<body>
	ComedianList.jsp
	
	
		<table border = "1"> <!-- ǥ ���� -->
			<tr>
				<td>comedian Id</td>
				<td>comedian Name</td>
				<td>comedian Age</td>
			</tr>
		
			<%
			ComedianDao comediandao = new ComedianDao();//comedian ��ü�������� ����
			ArrayList<Comedian> arrayList = comediandao.selectComedianList();// comedian�� ��� �ּҰ��� ã�ư�, selectComedianList�� ȣ��, �������� �� arrList�� ��´�.
				
				for(Comedian comedian : arrayList){
					
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
		<table>
				<br>
				<tr>
					<a href="<%= request.getContextPath() %>/index.jsp">Ȩ����</a>
				</tr>
				<tr>
					<a>	</a>
				</tr>
				<tr>
					<a href="<%= request.getContextPath() %>/insertComedianForm.jsp">����ϱ�</a>
				</tr>
		</table>
	
	
	</body>
</html>