<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "service.ComedianDao" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
ComedianList.jsp
<%
ArrayList<ComedianDao> arrComedian = null;
ComedianDao comedianDao = new ComedianDao();


%>

<table border = "1">
	<tr>
		<td>comedian_id</td>
		<td>comedian_name</td>
		<td>comedian_age</td>
	</tr>
	<tr>
	
</table>


</body>
</html>