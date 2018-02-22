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
			<td>팀명 : team27c</td><td>역할</td><td>사진</td><td>역할링크</td><br><br>
		</tr>
			<ul>
			<tr>
				<td>팀장 :왕서준 </td>
				<td> 역할: SingerList </td>
				<td><img src="/team27c/image/wsj.jpg"style="width: 150px; height: 150px;"> <br></td>
				<td><li><a href="<%= request.getContextPath() %>/singerList.jsp">singerList</a></li></td>
			</tr>
			<tr>
				<td>팀원 :김재희 </td>
				<td> 역할 : Actor </td>
				<td><img src="/team27c/image/kjh.jpg"style="width: 150px; height: 150px;" > <br></td>
				<td><li><a href="<%= request.getContextPath() %>/actorList.jsp">Actor</a></li></td>
			</tr>
			<tr>
				<td>팀원 : 김문기</td>
				<td> 역할 : ActressList </td>
				<td><img src="/team27c/image/kmg.jpg"style="width: 150px; height: 150px;" > <br></td>
				<td><li><a href="<%= request.getContextPath() %>/actressList.jsp">actressList</a></li></td>
			</tr>
			<tr>
				<td>팀원 : 도정만 </td>
				<td> 역할 : AnaunseoList </td>
				<td><img src="/team27c/image/djm.jpg"style="width: 150px; height: 150px;" > <br></td>
				<td><li><a href="<%= request.getContextPath() %>/anaunseoList.jsp">anaunseoList</a></li></td>
				
			</tr>
			<tr>
				<td>팀원 : 임가현  </td>
				<td> 역할 : ComedianList </td>
				<td><img src="/team27c/image/lgh.jpg"style="width: 150px; height: 150px;"> <br></td>
				<td><li><a href="<%= request.getContextPath() %>/comedianList.jsp">comedianList</a></li></td>
			</tr>
			<tr>
				<td>팀원 : 박지하  </td>
				<td>역할 : RapperList </td>  
				<td><img src="/team27c/image/pjh.jpg" style="width: 150px; height: 150px;"> <br></td>
				<td><li><a href="<%= request.getContextPath() %>/rapperList.jsp">rapperList</a></li></td>
					</ul>
			</tr>
			
		</table>
	
		
			
			
			
			
	
</body>
</html>