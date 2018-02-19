<!-- //team27c 박지하
 -->
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
		</tr>

<%//어레이 리스트 사용해서 객체참조변수 선언
ArrayList<Rapper> list = new ArrayList<Rapper>();
RapperDao rapperDao = new RapperDao();
list=rapperDao.selectRapperList();

	for(Rapper rapper : list) { // for()
//for문 사용 배열순서로 세팅
%>		
	<tr>
		<td><%=rapper.getRapperId() %></td>
		<td><%=rapper.getRapperName() %></td>
		<td><%=rapper.getRapperAge() %></td>
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
		<a href="<%= request.getContextPath() %>/insertRapperForm.jsp">등록하기</a>
	</tr>
</table>

</body>
</html>