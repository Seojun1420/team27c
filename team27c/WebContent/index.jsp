<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title> 목록 </title> 
</head> 
<body> 
	<header>
			<h1 align ="center">team27c</h1>
	</header>
		<table> 
		<tr>
				<th>팀원</th>
				<th>역할</th>
				<th>사진</th>
			</tr>
			<tr>
				<td>팀장 : 왕서준  </td>
				<td>역할 : singerList</td>
				<td><img src="/team27c/wsj.jpg"style="width: 150px; height: auto;"> <br><br></td>
			</tr>
			<tr>
				<td>팀원 : 김재희 </td>
				<td>역할 : Actor</td>
				<td><img src="/team27c/kjh.jpg"style="width: 150px; height: auto;" > <br><br></td>
			</tr>
			<tr>
				<td>팀원 : 김문기 </td>
				<td>역할 : actressList</td>
				<td><img src="/team27c/kmg.jpg"style="width: 150px; height: auto;" > <br><br></td>
			</tr>
			<tr>
				<td>팀원 : 도정만  </td>
				<td>역할 : anaunseoList</td>
				<td><img src="/team27c/djm.jpg"style="width: 150px; height: auto;" > <br><br></td>
			</tr>
			<tr>
				<td>팀원 : 임가현  </td>
				<td>역할 : comedianList</td>
				<td><img src="/team27c/lgh.jpg"style="width: 150px; height: auto;"> <br><br></td>
			</tr>
			<tr>
				<td>팀원 : 박지하  </td>
				<td>역할 : rapperList</td>
				<td><img src="pjh.jpg" style="width: 150px; height: auto;"> <br><br></td>
			</tr>
		</table>
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