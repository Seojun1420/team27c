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
	<table border="1">
	<tr>
		<td>��������</td>
		<td>�����̸�</td>
		<td>��������</td>
	</tr>	
<%
	/* selectSinger �޼��带 �����ϰ� ���Ϲ��� ���� ArrayList�̱� ������ 
	�׳�����  ���� �������� ���� Ÿ���� ArrayList�� ������ �޾ƾ��ϱ� ������
	Singer������ ArrayList�� �����Ѵ�
	*/
	ArrayList<Singer> arraySinger = new ArrayList<Singer>(); 
	
	SingerDao singer = new SingerDao();
	arraySinger= singer.selectSinger();
	
/* �޼��� ������ ���Ϲ��� ���� arrList�� ��ұ� ������ for���� �̿��� �׳����� ����� ȭ�鿡 ��Ÿ���ش� 
	���������ڰ� private�̾ get �޼��� �� ����ؼ��� ���� �޾ƿü� �ִ�.*/
	for(Singer s : arraySinger){
%>		
	<tr>
		<td><%= s.getSinger_Id() %></td>
		<td><%= s.getSinger_Name() %></td>
		<td><%= s.getSinger_Age() %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>

		
 
	
	