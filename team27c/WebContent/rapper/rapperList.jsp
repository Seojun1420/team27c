<!-- //team27c ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@ page import = "service.RapperDao"%>
<%@ page import = "service.Rapper"%>
<%@ page import = "java.util.ArrayList" %><!-- import �ؼ� ��� �� ���� �ٿ��ִ°ɷ� �˰��ִ�. -->

<title>���� ���</title>
</head>
<body>

	<table border="1">
		
		<tr>
			<th>���� ����</th>
			<th>���� �̸�</th>
			<th>���� ����</th>
			<th>����</th>
			<th>����</th>
		</tr>

<%//��� ����Ʈ ����ؼ� ��ü�������� ����
ArrayList<Rapper> list = new ArrayList<Rapper>();
RapperDao rapperDao = new RapperDao();
list=rapperDao.selectRapperList1();

	for(Rapper rapper : list) { // for()
//for�� ��� �迭������ ����
%>		
	<tr>
		<td><%=rapper.getRapperId() %></td>
		<td><%=rapper.getRapperName() %></td>
		<td><%=rapper.getRapperAge() %></td>
<!-- 		request.getParameter("rapperId");
		������
		SELECT * FROM rapper WHERE rapper_id = ?
		�����׼�
		UPDATE actor SET rapper_name=?,rapper_age=?WHERE rapper id =?
		�����׼�
		DELETE FROM rapper WHERER actor_id = ?
 -->		
 		<td><a href="<%= request.getContextPath() %>/rapper/updateRapperForm.jsp?rapperId=<%=rapper.getRapperId() %>">����</a></td>
		<td><a href="<%= request.getContextPath() %>/rapper/deleteRapperAction.jsp?rapperId=<%=rapper.getRapperId() %>">����</a></td>
	</tr>
<% 
	}//���� ���̵� �̸� ���� �޾ƿ�
%>
</table>
<table>
	<br>
	<tr>
		<a href="<%= request.getContextPath() %>/index.jsp">Ȩ����</a>
	</tr>
	<tr>
		<a> </a>
	</tr>
	<tr>
		<a href="<%= request.getContextPath() %>/rapper/insertRapperForm.jsp">����ϱ�</a>
	</tr>
</table>

</body>
</html>