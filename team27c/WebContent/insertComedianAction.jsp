<!-- team27c �Ӱ��� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="service.ComedianDao" %>
<%@ page import ="service.Comedian" %>
<%@ page import = "java.util.ArrayList" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		//comdiandao�� �ּ������Ͽ� DB�� �������, ���Ͻ��ѿ´�.
		ComedianDao comediandao = new ComedianDao();
		comediandao.selectComedianList();
		
		//request�� �Ҵ�� �ּҰ��� ã�ư�, getParameter("comedianName")�� �����ؿ´�. �׸��� ��ü�������� comedian�� �ּҰ��� �����Ѵ�.
		String comedianName = request.getParameter("comedianName");
		String comedianAge = request.getParameter("comedianAge");
		//����� Ȯ���ϱ� ���� ��ġ
		System.out.println(comedianName + "<-comedianName");
		System.out.println(comedianAge+ "<-comedianAge");
		
		//form���� �ۼ��� comedian�� ������ �Է��Ѵ�. 
		Comedian comedian = new Comedian();
		comedian.setComedianName(comedian.getComedianName());
		comedian.setComedianAge(comedian.getComedianAge());
		
		System.out.println(comedian + "<-- comedian Ȯ��");
		
		
		
		
		
		%>


	</body>
</html>