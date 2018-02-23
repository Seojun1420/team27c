<!-- //team27c 박지하 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@ page import="service.RapperDao"%>
<%@ page import="service.Rapper"%>
<%@ page import="java.util.ArrayList"%><!-- import 해서 길게 쓸 것을 줄여주는걸로 알고있다. -->

<title>래퍼 목록</title>
</head>
<body>
	<%
		//session 을 활용하여 sId가 null이 아닐떄만 보이게함.
		if (session.getAttribute("sId") != null) {
	%>
	<table border="1">
		<tr>
			<th>래퍼 순서</th>
			<th>래퍼 이름</th>
			<th>래퍼 나이</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<%
			} else {
		%>
		<table border="1">
			<tr>
				<th>래퍼 순서</th>
				<th>래퍼 이름</th>
				<th>래퍼 나이</th>
				<%
					}
				%>

				<%
					//어레이 리스트 사용해서 객체참조변수 선언
					ArrayList<Rapper> list = new ArrayList<Rapper>();
					RapperDao rapperDao = new RapperDao();
					list = rapperDao.selectRapperList1();

					for (Rapper rapper : list) { // for()
						//for문 사용 배열순서로 세팅
				%>
			
			<tr>
				<!-- rapper.getRapperId 는 rapper클래스를찾아가서  getting 한다RapperId값을. -->
				<td><%=rapper.getRapperId()%></td>
				<td><%=rapper.getRapperName()%></td>
				<td><%=rapper.getRapperAge()%></td>
				<!-- 		request.getParameter("rapperId");
		수정폼
		SELECT * FROM rapper WHERE rapper_id = ?
		수정액션
		UPDATE actor SET rapper_name=?,rapper_age=?WHERE rapper id =?
		삭제액션
		DELETE FROM rapper WHERER actor_id = ?
 -->
				<%
					if (session.getAttribute("sId") != null) {
				%>
				<td><a
					href="<%=request.getContextPath()%>/rapper/updateRapperForm.jsp?rapperId=<%=rapper.getRapperId()%>">수정</a></td>
				<td><a
					href="<%=request.getContextPath()%>/rapper/deleteRapperAction.jsp?rapperId=<%=rapper.getRapperId()%>">삭제</a></td>
				<%
					} else {
						}
				%>



			</tr>

			<%
				} //레퍼 아이디 이름 나이 받아옴
			%>
		</table>
		<table>
			<br>
			<tr>
				<a href="<%=request.getContextPath()%>/index.jsp">홈으로</a>
			</tr>
			<tr>
				<a> </a>
			</tr>
			<%
				//if문 으로 세션의 sId가 null이아닐때 등록하기 보이게
				if (session.getAttribute("sId") != null) {
			%>
			<tr>
				<a href="<%=request.getContextPath()%>/rapper/insertRapperForm.jsp">등록하기</a>
			</tr>
			<%
				// else일떄 등록하기 안보이게
				} else {
				}
			%>
		</table>
</body>
</html>