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
	<% 
		String sId=(String)(session.getAttribute("sId"));
		System.out.println(sId+"<--sId");
		if(sId == null) {
			%>
				<%@ include file="/login/loginForm.jsp" %>
			<% 
		}else {
			%>
				<h5 align ="center"><%= sId %> �� �α��μ���</h5>	
				<h5 align ="center"><a href="<%= request.getContextPath() %>/login/logoutAction.jsp"><input type="submit" value="�α׾ƿ�"></a></h5>	
						
			<% 	
		}
		
	%>
		 <table border="7" style="width: 40%" align ="center" >
		<tr>
			<br><td align ="center">���� : team27c</td><td align ="center">����</td><td align ="center">����</td><td align ="center">��ũ</td><br>
		</tr>
		<tr>
			<td align ="center">���� :�ռ��� </td>
			<td align ="center"> ����: SingerList </td>
			<td align ="center"><img src="/team27c/image/wsj.jpg"style="width: 150px; height: 100px;"> <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/singer/singerList.jsp">singerList</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<td align ="center">���� :������ </td>
			<td align ="center"> ���� : ActorList </td>
			<td align ="center"><img src="/team27c/image/kjh.jpg"style="width: 150px; height: 100px;" > <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/actor/actorList.jsp">Actor</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<td align ="center">���� : �蹮��</td>
			<td align ="center"> ���� : ActressList </td>
			<td align ="center"><img src="/team27c/image/kmg.jpg"style="width: 150px; height: 100px;" > <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/actress/actressList.jsp">actressList</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<td align ="center">���� : ������ </td>
			<td align ="center"> ���� : AnaunseoList </td>
			<td align ="center"><img src="/team27c/image/djm.jpg"style="width: 150px; height: 100px;" > <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/anaunseo/anaunseoList.jsp">anaunseoList</a></li>
				</ul>	
			</td>
		</tr>
		<tr>
			<td align ="center">���� : �Ӱ���  </td>
			<td align ="center"> ���� : ComedianList </td>
			<td align ="center"><img src="/team27c/image/lgh.jpg"style="width: 150px; height: 100px;"> <br></td>
			<td>
				<ul>
					<li><a href="<%= request.getContextPath() %>/comedian/comedianList.jsp">comedianList</a></li>
				</ul>	
			</td>
		</tr>
		<tr>
			<td align ="center">���� : ������  </td>
			<td align ="center">���� : RapperList </td>  
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