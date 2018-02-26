<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Rapper" %>
<%@ page import = "service.RapperDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>ComedianList</title>
</head>
<body>
		<%
			RapperDao rapperDao = new RapperDao();//comedian 객체참조변수 선언
		%>
			<h1>RapperList</h1>
			<table border = "1"> <!-- 표 생성 -->
				<thead>
					<%
						if(session.getAttribute("sId") != null) {
					%>
					<tr>
						<td>래퍼순위</td>
						<td>래퍼이름</td>
						<td>래퍼나이</td>
						<td>수정</td>
						<td>삭제</td>
					</tr>
					<% 
					}else{
					%>
					<tr>
						<td>래퍼순위</td>
						<td>래퍼이름</td>
						<td>래퍼나이</td>
					</tr>
					<%
					}
					%>
				</thead>
		<%
			// comedian에 담긴 주소값을 찾아가, selectComedianList를 호출, 실행해준 뒤 arrList로 담는다.
			ArrayList<Rapper> arrayList = rapperDao.selectRapperList();
			for(Rapper rapper : arrayList) {
		%>
					<%
						if(session.getAttribute("sId") != null) {
					%>
				<tr>
					<td><%= rapper.getRapperId() %></td>
					<td><%= rapper.getRapperName() %></td>
					<td><%= rapper.getRapperAge() %></td>
					<!-- 
						request.getParameter("comedianId")
						삭제액션 : Delete from comedian where comedian_id=?
						수정액션 : update comedian set comedian_name=?, comedian_age=? where comedian_id=?  
						수정폼 : Select *form comedian where comedian_id=? -->
					<td><a href="<%= request.getContextPath() %>/rapper/updateRapperForm.jsp?RapperId=<%=rapper.getRapperId()%>">수정</a></td>
					<td><a href="<%= request.getContextPath() %>/rapper/deleteRapperAction.jsp?RapperId=<%=rapper.getRapperId()%>">삭제</a></td>
				</tr>
				<%
				}else{
				%>	
				<tr>
					<td><%= rapper.getRapperId() %></td>
					<td><%= rapper.getRapperName() %></td>
					<td><%= rapper.getRapperAge() %></td>
				</tr>	
		<%
				}
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
				<%
				if(session.getAttribute("sId") != null) {
				%>
				<tr>
					<a href="<%= request.getContextPath() %>/rapper/insertRapperForm.jsp">리스트등록하기</a>
				</tr>
				<%
				}else{
				}
				
				%>
		</table>	
</body>
</html>