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
%>
	<h1> Singer List</h1>
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
		
<%
	/* selectSinger �޼��带 �����ϰ� ���Ϲ��� ���� ArrayList�̱� ������ 
	�׳�����  ���� �������� ���� Ÿ���� ArrayList�� ������ �޾ƾ��ϱ� ������
	Singer������ ArrayList�� �����Ѵ�
	*/
	
/* �޼��� ������ ���Ϲ��� ���� arrList�� ��ұ� ������ for���� �̿��� �׳����� ����� ȭ�鿡 ��Ÿ���ش� 
	���������ڰ� private�̾ get �޼��� �� ����ؼ��� ���� �޾ƿü� �ִ�.*/
	ArrayList<Singer> arraySinger = singer.selectSingerList();
	
	
	for(Singer s : arraySinger){
%>		
	<tr>
		<td><%= s.getSingerId() %></td>
		<td><%= s.getSingerName() %></td>
		<td><%= s.getSingerAge() %></td>
	</tr>
<%
	}
%>
</table>
<br>

				<br>
					<a href="<%= request.getContextPath() %>/index.jsp">Ȩ���� ���ư���</a>
				<br>
					<a href="<%= request.getContextPath() %>/insertSingerForm.jsp">��������Ʈ ����ϱ�</a>
		
</body>
</html>

	
	