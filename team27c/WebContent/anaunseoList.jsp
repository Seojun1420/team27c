<!-- team27 ������ -->


<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="service.AnaunseoDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="service.Anaunseo" %>
<!DOCTYPE html>

<table width="100%" border="1">
<tr>
	<td>���̵�</td><td>�̸�</td><td>����</td>
</tr>
<%
ArrayList<Anaunseo> list = new ArrayList<Anaunseo>();
AnaunseoDao ana = new AnaunseoDao();
list = ana.selectAnaunseoList();


	for(Anaunseo anaunseo : list) {
%> 
<tr>
	<td><%= anaunseo.getAnaunseoId() %></td>
	<td><%= anaunseo.getAnaunseoName() %></td>
	<td><%= anaunseo.getAnaunseoAge() %></td>
<tr>
<%
	}
%>
</table>