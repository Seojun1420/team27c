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
						<td> 팀명  : team27c </td>
					</tr> 
			<tr>
				<td>
				<img src="team1.jpg" > <br><br>
				</td>
				<td>팀장 : 왕서준  </td>
				<td>역할 : SingerList</td>
			</tr>
			<tr>
				<td>
				<img src="team2.jpg" > <br><br>
				</td>
				<td>팀원 : 김재희 </td>
				<td>역할 : Actor</td>
			</tr>
			<tr>
			<td>
				<img src="team3.jpg" > <br><br>
				</td>
				<td>팀원 : 김문기 </td>
				<td>역할 : actressList</td>
			</tr>
			<tr>
				<td>
				<img src="team4.jpg" > <br><br>
				</td>
				<td>팀원 : 도정만  </td>
				<td>역할 : anaunseoList</td>
			</tr>
			<tr>
				<td>
				<img src="team5.jpg" > <br><br>
				</td>
				<td>팀원 : 임가현  </td>
				<td>역할 : comedianList</td>
			</tr>
			<tr>
				<td>
				<img src="team6.jpg" > <br><br>
				</td>
				<td>팀원 : 박지하  </td>
				<td>역할 : RapperList</td>
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