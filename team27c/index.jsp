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
		<td>actress</td>
	</tr>	
	<tr>
		<td>������</td>
		<td>anaunseo</td>
	</tr>	
	<tr>
		<td>������</td>
		<td>singer</td>
	</tr>	
	<tr>
		<td>�Ӱ���</td>
		<td>comedian</td>
	</tr>	
	<tr>
		<td>������</td>
		<td>rapper</td>
	</tr>	
	<tr>
		<td>�ռ���</td>
		<td>singer</td>
	</tr>	
	
	</table>
	<ul>
		<li><a href="<%= request.getContextPath() %>/actorList.jsp">actor</a></li>
 		<li><a href="<%= request.getContextPath() %>/actressL.jsp">actress</a></li>
		<li><a href="<%= request.getContextPath() %>/singer.jsp">singer</a></li>
		<li><a href="<%= request.getContextPath() %>/comedian.jsp">comedian</a></li>
		<li><a href="<%= request.getContextPath() %>/anaunseo.jsp">anaunseo</a></li>
		<li><a href="<%= request.getContextPath() %>/rapper.jsp">rapper</a></li>
	</ul>
</body>
</html>