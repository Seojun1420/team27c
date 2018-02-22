<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Comedian" %>
<%@ page import = "service.ComedianDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>ComedianList</title>
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
						<td>수정</td>
						<td>삭제</td>
					</tr>
				</thead>
		<%
			// comedian에 담긴 주소값을 찾아가, selectComedianList를 호출, 실행해준 뒤 arrList로 담는다.
			ArrayList<Comedian> arrayList = comediandao.selectComedian();
			for(Comedian comedian : arrayList) {
		%>
				<tr>
					<td><%= comedian.getComedianId() %></td>
					<td><%= comedian.getComedianName() %></td>
					<td><%= comedian.getComedianAge() %></td>
					<!-- request.ge
					tParameter("comedianId")
						삭제액션 : Delete from comedian where comedian_id=?
						수정액션 : update comedian set comedian_name=?, comedian_age=? where comedian_id=?  
						수정폼 : Select *form comedian where comedian_id=? -->
					<td><a href="<%= request.getContextPath() %>/comedian/updateComedianForm.jsp?comedianId=<%=comedian.getComedianId()%>">수정</a></td>
					<td><a href="<%= request.getContextPath() %>/comedian/deleteComedianAction.jsp?comedianId=<%=comedian.getComedianId()%>">삭제</a></td>
				</tr>
		<%
			}
		%>
				
		</table>
		<br>
		<table>
				<tr>
					<a href="<%= request.getContextPath() %>/comedian/index.jsp">홈으로</a>
				</tr>
				<tr>
				<br>
				</tr>
				<tr>
					<a href="<%= request.getContextPath() %>/comedian/insertComedianForm.jsp">리스트등록하기</a>
				</tr>
		</table>	
</body>
</html>