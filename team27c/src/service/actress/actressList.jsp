<!-- team27c �蹮�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="service.ActressDao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="service.Actress" %>
<!DOCTYPE html>
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title>Team27c</title> 
</head> 
<body>
	<h1>Actress list</h1> 
	<table  border="1">
		<thead>
			<tr>
				<th>������ȣ</th>
				<th>������̸�</th>
				<th>����쳪��</th>
				<th>����</th>
				<th>����</th>
			</tr>
		</thead>
<%
	/* selectActress �޼��带 �����ϰ� ���Ϲ������� ArrayList �̱⶧���� 
		�׳����� ���Ϲ������� ���� Ÿ���� ArrayList �������� �޾ƾ��ϱ⶧����
		actressList������ ArrayList�� �������ش�.
	*/
 	ArrayList<Actress> arrList = new ArrayList<Actress>();
	/*
		ActressDao �� ����ϱ����� ��ü���������� �������ְ� ��ü�������� �ּҸ��Ҵ��Ѵ�.
		�׸��� �ּҸ�ã�ư� �޼��带 �������ش�.
	*/
	ActressDao act= new ActressDao();
	arrList=act.selectActress();
	/*
		�޼�������� ���Ϲ������� arrList ����ұ� ������ for ���� �̿���
		�׳����� ����� ȭ�鿡 ��Ÿ���ش�.
		���������ڰ� private �̱⶧���� get �޼��带 ����ؼ��� ���� �޾ƿü��ִ�.
	*/
	 for(Actress actress : arrList){ 
%>
		<tbody>
			<tr>
				<td><%=actress.getActressId() %></td>
				<td><%=actress.getActressName() %></td>
				<td><%=actress.getActressAge() %></td>
				<td><a href="<%=request.getContextPath()%>/actress/updateActressForm.jsp?actressId=<%=actress.getActressId()%>">����</a></td>
				<td><a href="<%=request.getContextPath()%>/actress/deleteActressAction.jsp?actressId=<%=actress.getActressId()%>">����</a></td>
			</tr>
		</tbody>
	<%
		}
	%>
	</table>
	<br>
			<a href="<%= request.getContextPath() %>/index.jsp">Ȩ���� ���ư���</a>
	<br>
			<a href="<%= request.getContextPath() %>/actress/insertActressForm.jsp">����츮��Ʈ ����ϱ�</a>
		

	
</body>
</html>
