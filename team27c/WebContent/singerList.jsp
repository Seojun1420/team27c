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
	<table border="1">
	<tr>
		<td>가수순서</td>
		<td>가수이름</td>
		<td>가수나이</td>
	</tr>	
<%
	/* selectSinger 메서드를 실행하고 리턴받은 값이 ArrayList이기 때문에 
	그내용을  리턴 받을려면 같은 타입인 ArrayList로 정보를 받아야하기 때문에
	Singer에서도 ArrayList를 선언한다
	*/
	ArrayList<Singer> arraySinger = new ArrayList<Singer>(); 
	
	SingerDao singer = new SingerDao();
	arraySinger= singer.selectSinger();
	
/* 메서드 실행후 리턴받은 값을 arrList에 담았기 때문에 for문을 이용해 그내용을 출력해 화면에 나타내준다 
	접근지정자가 private이어서 get 메서드 를 사용해서만 값을 받아올수 있다.*/
	for(Singer s : arraySinger){
%>		
	<tr>
		<td><%= s.getSinger_Id() %></td>
		<td><%= s.getSinger_Name() %></td>
		<td><%= s.getSinger_Age() %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>

		
 
	
	