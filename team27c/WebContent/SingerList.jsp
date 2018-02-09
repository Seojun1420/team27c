<!-- team27c 왕서준 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
   <%@ page import = "java.util.ArrayList" %>
   <%@ page import = "service.Singer" %>
   <%@ page import = "service.SingerDao" %>


<%
	SingerDao singer = new SingerDao();
	ArrayList<Singer> arraySinger = new ArrayList<Singer>(); 
	arraySinger= singer.selectSinger();
	
	
	/* selectSinger 메서드를 실행하고 리턴받은 값이 ArrayList이기 때문에 
	 	그내용을  리턴 받을려면 같은 타입인 ArrayList로 정보를 받아야하기 때문에
	 	Singer에서도 ArrayList를 선언한다
	*/
%>
<table border="1">
	<tr>
		<td>가수순서</td>
		<td>가수이름</td>
		<td>가수나이</td>
	</tr>
	
<%
	for(int i=0;i<arraySinger.size(); i++){
%>		
	<tr>
		<td><%= arraySinger.get(i).getSinger_Id() %></td>
		<td><%= arraySinger.get(i).getSinger_Name() %></td>
		<td><%= arraySinger.get(i).getSinger_Age() %></td>
	</tr>
<%
	}
%>
</table>
		
 
	
	