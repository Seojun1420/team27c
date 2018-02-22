<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Comedian" %>
<%@ page import = "service.ComedianDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>ActorList</title>
</head>
<body>
		<%
			ComedianDao comediandao = new ComedianDao();//comedian 객체참조변수 선언
		%>
			<h1>ComedianList.jsp</h1>
			<table border = "1"> <!-- 표 생성 -->
				<thead>
					<tr>
						<td>comedian Id</td>
						<td>comedian Name</td>
						<td>comedian Age</td>
					</tr>
				</thead>
		<%
			// comedian에 담긴 주소값을 찾아가, selectComedianList를 호출, 실행해준 뒤 arrList로 담는다.
			ArrayList<Comedian> arrayList = comediandao.selectComedianList();
			for(Comedian comedian : arrayList) {
		%>
				<tr>
					<td><%= comedian.getComedianId() %></td>
					<td><%= comedian.getComedianName() %></td>
					<td><%= comedian.getComedianAge() %></td>
				</tr>
		<%
			}
		%>
				
		</table>
		<br>
		<table>
				<tr>
					<a href="<%= request.getContextPath() %>/index.jsp">홈으로</a>
				</tr>
				<tr>
				<br>
				</tr>
				<tr>
					<a href="<%= request.getContextPath() %>/insertComedianForm.jsp">리스트등록하기</a>
				</tr>
		</table>	
</body>
</html>