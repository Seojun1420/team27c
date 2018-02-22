<!-- //team27c 박지하 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@ page import = "service.RapperDao"%>
<%@ page import = "service.Rapper"%>
<%@ page import = "java.util.ArrayList" %><!-- import 해서 길게 쓸 것을 줄여주는걸로 알고있다. -->

<title>래퍼 목록</title>
</head>
<body>

	<table border="1">
		
		<tr>
			<th>래퍼 순서</th>
			<th>래퍼 이름</th>
			<th>래퍼 나이</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>

<%//어레이 리스트 사용해서 객체참조변수 선언
ArrayList<Rapper> list = new ArrayList<Rapper>();
RapperDao rapperDao = new RapperDao();
list=rapperDao.selectRapperList1();

	for(Rapper rapper : list) { // for()
//for문 사용 배열순서로 세팅
%>		
	<tr>
		<td><%=rapper.getRapperId() %></td>
		<td><%=rapper.getRapperName() %></td>
		<td><%=rapper.getRapperAge() %></td>
<!-- 		request.getParameter("rapperId");
		수정폼
		SELECT * FROM rapper WHERE rapper_id = ?
		수정액션
		UPDATE actor SET rapper_name=?,rapper_age=?WHERE rapper id =?
		삭제액션
		DELETE FROM rapper WHERER actor_id = ?
 -->		
 		<td><a href="<%= request.getContextPath() %>/rapper/updateRapperForm.jsp?rapperId=<%=rapper.getRapperId() %>">수정</a></td>
		<td><a href="<%= request.getContextPath() %>/rapper/deleteRapperAction.jsp?rapperId=<%=rapper.getRapperId() %>">삭제</a></td>
	</tr>
<% 
	}//레퍼 아이디 이름 나이 받아옴
%>
</table>
<table>
	<br>
	<tr>
		<a href="<%= request.getContextPath() %>/index.jsp">홈으로</a>
	</tr>
	<tr>
		<a> </a>
	</tr>
	<tr>
		<a href="<%= request.getContextPath() %>/rapper/insertRapperForm.jsp">등록하기</a>
	</tr>
</table>

</body>
</html>