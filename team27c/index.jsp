<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<head>team27c</head>
	<table>
	<tr>
		<td>팀원</td>
		<td>팀원의 역할</td>
	</tr>	
	<tr>
		<td>김문기</td>
		<td>actress</td>
	</tr>	
	<tr>
		<td>도정만</td>
		<td>anaunseo</td>
	</tr>	
	<tr>
		<td>김재희</td>
		<td>singer</td>
	</tr>	
	<tr>
		<td>임가현</td>
		<td>comedian</td>
	</tr>	
	<tr>
		<td>박지하</td>
		<td>rapper</td>
	</tr>	
	<tr>
		<td>왕서준</td>
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