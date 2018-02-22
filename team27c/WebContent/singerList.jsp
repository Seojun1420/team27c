<!-- team27c 왕서준 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
	<%@ page import = "java.util.ArrayList" %>
   	<%@ page import = "service.Singer" %>
   	<%@ page import = "service.SingerDao" %>
   <!DOCTYPE html>
	<html> 
	<head> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> 
<title>Insert title here</title> 
</head>
<body>
<%
	SingerDao singer = new SingerDao();
%>
	<h1> Singer List</h1>
	<table border="1">
		<thead>
			<tr>
				<td>가수번호</td>
				<td>가수이름</td>
				<td>가수나이</td>
				<td>수정</td>
				<td>삭제</td>
			</tr>	
		</thead>
		
<%
	/* selectSinger 메서드를 실행하고 리턴받은 값이 ArrayList이기 때문에 
	그내용을  리턴 받을려면 같은 타입인 ArrayList로 정보를 받아야하기 때문에
	Singer에서도 ArrayList를 선언한다
	*/
	
/* 메서드 실행후 리턴받은 값을 arrList에 담았기 때문에 for문을 이용해 그내용을 출력해 화면에 나타내준다 
	접근지정자가 private이어서 get 메서드 를 사용해서만 값을 받아올수 있다.*/
	ArrayList<Singer> arraySinger = singer.selectSingerList();
	
	
	for(Singer s : arraySinger){
%>		
	<tr>
		<td><%= s.getSingerId() %></td>
		<td><%= s.getSingerName() %></td>
		<td><%= s.getSingerAge() %></td>
	</tr>
<%
	}
%>
</table>
<br>

				<br>
					<a href="<%= request.getContextPath() %>/index.jsp">홈으로 돌아가기</a>
				<br>
					<a href="<%= request.getContextPath() %>/insertSingerForm.jsp">가수리스트 등록하기</a>
		
</body>
</html>

	
	