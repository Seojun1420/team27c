<!-- //team27c ������
 -->
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
		</tr>
		

<%//��� ����Ʈ ����ؼ� ��ü�������� ����
ArrayList<Rapper> list = new ArrayList<Rapper>();
RapperDao rapperDao = new RapperDao();
list=rapperDao.selectRapperList();
System.out.println(list.size());



//
	for(Rapper rapper : list) { // for()
//for�� ��� �迭������ ����
		
%>
	<tr>
		<td><%=rapper.getRapperId() %></td>
		<td><%=rapper.getRapperName() %></td>
		<td><%=rapper.getRapperAge() %></td>
	</tr>
<%
	}//���� ���̵� �̸� ���� �޾ƿ�
%>



</table>


</body>
</html>