<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<head>team27c</head>
	<table>
	<tr>
		<td>����</td>
		<td>������ ����</td>
	</tr>	
	<tr>
		<td>�蹮��</td>
		<td>actressList</td>
	</tr>	
	<tr>
		<td>������</td>
		<td>actorList</td>
	</tr>	
	<tr>
		<td>������</td>
		<td>singerList</td>
	</tr>	
	<tr>
		<td>�Ӱ���</td>
		<td>comedianList</td>
	</tr>	
	<tr>
		<td>������</td>
		<td>rapperList</td>
	</tr>	
	<tr>
		<td>�ռ���</td>
		<td>index</td>
	</tr>	
	
	</table>
	<ul>
		<li><a href="<%= request.getContextPath() %>/actorList.jsp">actor list</a></li>
 		<li><a href="<%= request.getContextPath() %>/actressList.jsp">actress list</a></li>
		<li><a href="<%= request.getContextPath() %>/singerList.jsp">singer list</a></li>
		<li><a href="<%= request.getContextPath() %>/comedianList.jsp">comedian list</a></li>
		<li><a href="<%= request.getContextPath() %>/rapperList.jsp">rapper list</a></li>
	</ul>
</body>
</html>