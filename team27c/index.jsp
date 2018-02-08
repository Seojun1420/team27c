<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<head>team27c</head>
	<table>
	<tr>
		<td>ÆÀ¿ø</td>
		<td>ÆÀ¿øÀÇ ¿ªÇÒ</td>
	</tr>	
	<tr>
		<td>±è¹®±â</td>
		<td>actressList</td>
	</tr>	
	<tr>
		<td>µµÁ¤¸¸</td>
		<td>actorList</td>
	</tr>	
	<tr>
		<td>±èÀçÈñ</td>
		<td>singerList</td>
	</tr>	
	<tr>
		<td>ÀÓ°¡Çö</td>
		<td>comedianList</td>
	</tr>	
	<tr>
		<td>¹ÚÁöÇÏ</td>
		<td>rapperList</td>
	</tr>	
	<tr>
		<td>¿Õ¼­ÁØ</td>
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