<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title>Insert title here</title> 
</head> 
<body> 
		<table>
			<tr>
				<td>����  : team27c </td>
			</tr> 
			<tr>
				<td>���� : �ռ���  </td>
				<td>���� : SingerList</td>
			</tr>
			<tr>
				<td>���� : ������ </td>
				<td>���� : Actor</td>
			</tr>
			<tr>
				<td>���� : �蹮�� </td>
				<td>���� : actressList</td>
			</tr>
			<tr>
				<td>���� : ������  </td>
				<td>���� : anaunseoList</td>
			</tr>
			<tr>
				<td>���� : �Ӱ���  </td>
				<td>���� : comedianList</td>
			</tr>
			<tr>
				<td>���� : ������  </td>
				<td>���� : RapperList</td>
			</tr>
		</table>
		<ul>
			<li><a href="<%= request.getContextPath() %>/actorList.jsp">Actor</a></li>
			<li><a href="<%= request.getContextPath() %>/actressList.jsp">actressList</a></li>
			<li><a href="<%= request.getContextPath() %>/anaunseoList.jsp">anaunseoList</a></li>
			<li><a href="<%= request.getContextPath() %>/comedianList.jsp">comedianList</a></li>
			<li><a href="<%= request.getContextPath() %>/RapperList.jsp">RapperList</a></li>
			<li><a href="<%= request.getContextPath() %>/SingerList.jsp">SingerList</a></li>
		</ul>
</body>
</html>