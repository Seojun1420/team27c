<!-- team27c �ռ��� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
   <%@ page import = "java.util.ArrayList" %>
   <%@ page import = "service.Singer" %>
   <%@ page import = "service.SingerDao" %>


<%
	SingerDao singer = new SingerDao();
	ArrayList<Singer> arraySinger = new ArrayList<Singer>(); 
	arraySinger= singer.selectSinger();
	
	
	/* selectSinger �޼��带 �����ϰ� ���Ϲ��� ���� ArrayList�̱� ������ 
	 	�׳�����  ���� �������� ���� Ÿ���� ArrayList�� ������ �޾ƾ��ϱ� ������
	 	Singer������ ArrayList�� �����Ѵ�
	*/
%>
<table border="1">
	<tr>
		<td>��������</td>
		<td>�����̸�</td>
		<td>��������</td>
	</tr>
	
<%
	for(int i=0;i<arraySinger.size(); i++){
%>		
	<tr>
		<td><%= arraySinger.get(i).getSinger_Id() %></td>
		<td><%= arraySinger.get(i).getSinger_Name() %></td>
		<td><%= arraySinger.get(i).getSinger_Age() %></td>
	</tr>
<%
	}
%>
</table>
		
 
	
	