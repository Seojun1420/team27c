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
ArrayList<Comedian> arrList = comediandao.selectComedianList();// comedian�� ��� �ּҰ��� ã�ư�, selectComedianList�� ȣ��, �������� �� arrList�� ��´�.
	
	for(Comedian comedian : arrList){
		
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


</body>
</html>