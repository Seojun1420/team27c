<!-- team27c 임가현 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.Comedian" %>
<%@ page import = "service.ComedianDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html >

<body>
ComedianList.jsp


<table border = "1"> <!-- 표 생성 -->
	<tr>
		<td>comedian Id</td>
		<td>comedian Name</td>
		<td>comedian Age</td>
	</tr>

<%
ComedianDao comediandao = new ComedianDao();//comedian 객체참조변수 선언
ArrayList<Comedian> arrList = comediandao.selectComedianList();// comedian에 담긴 주소값을 찾아가, selectComedianList를 호출, 실행해준 뒤 arrList로 담는다.
	
	for(Comedian comedian : arrList){
		
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


</body>
</html>