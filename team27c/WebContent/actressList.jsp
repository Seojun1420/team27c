<!-- team27c 김문기 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="service.ActressDao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="service.Actress" %>
<!DOCTYPE html>

<table  border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>나이</td>
	</tr>
<%
	/* selectActress 메서드를 실행하고 리턴받은값이 ArrayList 이기때문에 
		그내용을 리턴받으려면 같은 타입인 ArrayList 로정보를 받아야하기때문에
		actressList에서도 ArrayList를 선언해준다.
	*/
 	ArrayList<Actress> arrList =new ArrayList<Actress>();
	/*
		ActressDao 를 사용하기위해 객체참조변수를 선언해주고 객체를생성해 주소를할당한다.
		그리고 주소를찾아가 메서드를 실행해준다.
	*/
	ActressDao act= new ActressDao();
	arrList=act.selectActress();
	/*
		메서드실행후 리턴받은값을 arrList 에담았기 때문에 for 문을 이용해
		그내용을 출력해 화면에 나타내준다.
		접근지정자가 private 이기때문에 get 메서드를 사용해서만 값을 받아올수있다.
	*/
	 for(Actress s : arrList){ 
%>
	<tr>
		<td><%=s.getActressId() %></td>
		<td><%=s.getActressName() %></td>
		<td><%=s.getActressAge() %></td>
	</tr>
	<%
		}
	%>
</table>
