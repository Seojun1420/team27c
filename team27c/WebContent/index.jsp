<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title>Insert title here</title> 
</head> 
<body> 
	<header>
			<h1 align ="center">team27c</h1>
	</header>

	
		<table> 
		
		<tr>
				<th>����</th>
				<th>����</th>
				<th>����</th>
			</tr>
			<tr>
				<td>���� : �ռ���  </td>
				<td>���� : singerList</td>
				<td><img src="wsj.jpg"style="width: 150px; height: auto;"> <br><br></td>
			</tr>
			<tr>
				<td>���� : ������ </td>
				<td>���� : Actor</td>
				<td><img src="kjh.jpg"style="width: 150px; height: auto;" > <br><br></td>
			</tr>
			<tr>
				<td>���� : �蹮�� </td>
				<td>���� : actressList</td>
				<td><img src="kmg.jpg"style="width: 150px; height: auto;" > <br><br></td>
			</tr>
			<tr>
				<td>���� : ������  </td>
				<td>���� : anaunseoList</td>
				<td><img src="djm.jpg"style="width: 150px; height: auto;" > <br><br></td>
			</tr>
			<tr>
				<td>���� : �Ӱ���  </td>
				<td>���� : comedianList</td>
				<td><img src="lgh.jpg"style="width: 150px; height: auto;"> <br><br></td>
			</tr>
			<tr>
				<td>���� : ������  </td>
				<td>���� : rapperList</td>
				<td><img src="pjh.jpg" style="width: 150px; height: auto;"> <br><br></td>
			</tr>
		</table>
		<nav style="float: center">
		<ul>
			<li><a href="<%= request.getContextPath() %>/actorList.jsp">Actor</a></li>
			<li><a href="<%= request.getContextPath() %>/actressList.jsp">actressList</a></li>
			<li><a href="<%= request.getContextPath() %>/anaunseoList.jsp">anaunseoList</a></li>
			<li><a href="<%= request.getContextPath() %>/comedianList.jsp">comedianList</a></li>
			<li><a href="<%= request.getContextPath() %>/rapperList.jsp">rapperList</a></li>
			<li><a href="<%= request.getContextPath() %>/singerList.jsp">singerList</a></li>
			
			
		</ul>
</body>
</html>