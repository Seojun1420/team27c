<!-- team27 도정만 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="service.AnaunseoDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="service.Anaunseo" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title>AnaunseoList</title>
</head>
<body>
<%
	String sId=(String)(session.getAttribute("sId"));	
%>
	<h1>Anaunseo List</h1>
		<table border="1">
			<thead>			
				<tr>
					<th>아나운서번호</th>
					<th>아나운서이름</th>
					<th>아나운서나이</th>
					<%
						if(sId != null) {
							%>
								<th>수정</th>
								<th>삭제</th>
							<% 
						}
					%>

				</tr>
			</thead>
		<%
			AnaunseoDao anaunseo = new AnaunseoDao();
			/* anaunseo 할당된 참조값을 찾아가 selectAnaunseoList() 
			메서드를 실행후  메서드 호출한 곳으로 return을 받고 그값을
			ArrayList<Anaunseo>타입의 list에 할당한후
			for문을 돌려 차례대로 출력한다. */
		 
			ArrayList<Anaunseo> list = anaunseo.selectAnaunseoList();		
			for(Anaunseo ana : list) {
		%> 
				<tr>
					<td><%= ana.getAnaunseoId() %></td>
					<td><%= ana.getAnaunseoName() %></td>
					<td><%= ana.getAnaunseoAge() %></td>
										<%
						if(sId != null) {
							%>
								<td><a href="<%= request.getContextPath() %>/anaunseo/updateAnaunseoForm.jsp?anaunseoId=<%= ana.getAnaunseoId()%>">수정</a></td>
								<td><a href="<%= request.getContextPath() %>/anaunseo/deleteAnaunseoAction.jsp?anaunseoId=<%= ana.getAnaunseoId()%>">삭제</a></td>
							<% 
						}
					%>
					
				</tr>
		<%
			}
		%>	
		</table>
		<br>
		<a href="<%= request.getContextPath() %>/index.jsp">홈으로 돌아가기</a>
		<br>
<%
								if(sId != null) {
							%>
										<a href="<%= request.getContextPath() %>/anaunseo/insertAnaunserForm.jsp">아나운서리스트 등록하기</a>
							<% 
						}
					%>
</body>
</html>