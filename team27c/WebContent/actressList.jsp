<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%@page import="service.ActressDao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="service.Actress" %>
<%
 	ArrayList<Actress> arrList =new ArrayList<Actress>();
	ActressDao act= new ActressDao();
	arrList=act.selectActress();

%>
<table border="1">
	<tr>
		<td>���̵�</td>
		<td>�̸�</td>
		<td>����</td>
	</tr>
	<% for(int i=0;i<arrList.size();i++){ %>
	<tr>
		<td><%=arrList.get(i).getActressId() %></td>
		<td><%=arrList.get(i).getActressName() %></td>
		<td><%=arrList.get(i).getActressAge() %></td>
	</tr>
	<%} %>
</table>
