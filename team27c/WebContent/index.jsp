<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html> 
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
	<title> Index  </title> 
</head> 
<body> 
	<header>

			<h1 align ="center">team27c</h1>

	</header>
	<table border="2"> 

		<tr>
			<td>���� : team27c</td><td>����</td><td>����</td><td>���Ҹ�ũ</td><br><br>
		</tr>
			<ul>
			<tr>
				<td>���� :�ռ��� </td>
				<td> ����: SingerList </td>
				<td><img src="/team27c/image/wsj.jpg"style="width: 150px; height: 150px;"> <br></td>
				<td><li><a href="<%= request.getContextPath() %>/singerList.jsp">singerList</a></li></td>
			</tr>
			<tr>
				<td>���� :������ </td>
				<td> ���� : Actor </td>
				<td><img src="/team27c/image/kjh.jpg"style="width: 150px; height: 150px;" > <br></td>
				<td><li><a href="<%= request.getContextPath() %>/actorList.jsp">Actor</a></li></td>
			</tr>
			<tr>
				<td>���� : �蹮��</td>
				<td> ���� : ActressList </td>
				<td><img src="/team27c/image/kmg.jpg"style="width: 150px; height: 150px;" > <br></td>
				<td><li><a href="<%= request.getContextPath() %>/actressList.jsp">actressList</a></li></td>
			</tr>
			<tr>
				<td>���� : ������ </td>
				<td> ���� : AnaunseoList </td>
				<td><img src="/team27c/image/djm.jpg"style="width: 150px; height: 150px;" > <br></td>
				<td><li><a href="<%= request.getContextPath() %>/anaunseoList.jsp">anaunseoList</a></li></td>
				
			</tr>
			<tr>
				<td>���� : �Ӱ���  </td>
				<td> ���� : ComedianList </td>
				<td><img src="/team27c/image/lgh.jpg"style="width: 150px; height: 150px;"> <br></td>
				<td><li><a href="<%= request.getContextPath() %>/comedianList.jsp">comedianList</a></li></td>
			</tr>
			<tr>
				<td>���� : ������  </td>
				<td>���� : RapperList </td>  
				<td><img src="/team27c/image/pjh.jpg" style="width: 150px; height: 150px;"> <br></td>
				<td><li><a href="<%= request.getContextPath() %>/rapperList.jsp">rapperList</a></li></td>
					</ul>
			</tr>
			
		</table>
	
		
			
			
			
			
	
</body>
</html>