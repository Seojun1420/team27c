<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html> 
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
	<title> Index  </title> 
</head> 
<body> 

	<header>
			<h1 border="2" align ="center">team27c</h1>
	</header>
	
		<form action="<%= request.getContextPath() %>/login/loginMemberAction.jsp" method="post" align="center">
		<%if(session.getAttribute("member_id") == null) {%>
			<td> 아이디 </td> 
			 <input type="text" name="member_id" placeholder="아이디">
			<td> 패스워드 </td> 
			 <input type="password" name="member_pw" placeholder="패스워드">
			<input type="submit" value="로그인">
			<br>
		 </form>
		 <% } %>
		 <table border="7" style="width: 40%" align ="center" >
		<tr>
			<br><td align ="center">팀명 : team27c</td><td align ="center">역할</td><td align ="center">사진</td><td align ="center">링크</td><br>
		</tr>
		<tr>
			<td align ="center">팀장 :왕서준 </td>
			<td align ="center"> 역할: SingerList </td>
			<td align ="center"><img src="/team27c/image/wsj.jpg"style="width: 150px; height: 100px;"> <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/singer/singerList.jsp">singerList</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<td align ="center">팀원 :김재희 </td>
			<td align ="center"> 역할 : ActorList </td>
			<td align ="center"><img src="/team27c/image/kjh.jpg"style="width: 150px; height: 100px;" > <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/actor/actorList.jsp">Actor</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<td align ="center">팀원 : 김문기</td>
			<td align ="center"> 역할 : ActressList </td>
			<td align ="center"><img src="/team27c/image/kmg.jpg"style="width: 150px; height: 100px;" > <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/actress/actressList.jsp">actressList</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<td align ="center">팀원 : 도정만 </td>
			<td align ="center"> 역할 : AnaunseoList </td>
			<td align ="center"><img src="/team27c/image/djm.jpg"style="width: 150px; height: 100px;" > <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/anaunseo/anaunseoList.jsp">anaunseoList</a></li>
				</ul>	
			</td>
		</tr>
		<tr>
			<td align ="center">팀원 : 임가현  </td>
			<td align ="center"> 역할 : ComedianList </td>
			<td align ="center"><img src="/team27c/image/lgh.jpg"style="width: 150px; height: 100px;"> <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/comedian/comedianList.jsp">comedianList</a></li>
				</ul>	
			</td>
		</tr>
		<tr>
			<td align ="center">팀원 : 박지하  </td>
			<td align ="center">역할 : RapperList </td>  
			<td align ="center"><img src="/team27c/image/pjh.jpg" style="width: 150px; height: 100px;"> <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/rapper/rapperList.jsp">rapperList</a></li>
				</ul>
			</td>
		</tr>		
	</table>

</body>
</html>