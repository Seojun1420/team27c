<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
   <%@ page import = "java.util.ArrayList" %>
   <%@ page import = "service.Singer" %>
   <%@ page import = "service.SingerDao" %>

<%
	ArrayList<Singer> arrList = new ArrayList<Singer>();
	SingerDao singer = new SingerDao();
	arrList=singer.selectSinger();
%>
<table border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>나이</td>
	</tr>
		<% for(int i=0;i<arrList.size(); i++){ %>
	<tr>
		<td><%=arrList.get(1).getSinger_Id() %></td>
		<td><%=arrList.get(1).getSinger_Name() %></td>
		<td><%=arrList.get(1).getSinger_Age() %></td>
	</tr>
	<%} %>
</table>
		
 
	
	