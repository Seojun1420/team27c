<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html">
<%@ page import = "service.RapperDao" %>
<%@ page import = "service.Rapper" %>
<%@ page import = "java.util.ArrayList"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% //dao ��ü�����Ѵ�
	RapperDao rapperdao = new RapperDao();
	rapperdao.selectRapperList();
	//String ������ rapperName �� �غ��Ѵ�?
	String rapperName = request.getParameter("rapperName");
	String rapperAge = request.getParameter("rapperAge");
	//�׳� Ȯ�ο� 
	System.out.println(rapperName +"<-- rapperName");
	System.out.println(rapperAge +" <-- rapperAge");
	//���� ��ä�����Ѵ� rapperName �� getting �Ѵ� �ٵ� set ������ ���°� ������?
	Rapper rapper = new Rapper();
	rapper.setRapperName(rapper.getRapperName());
	rapper.setRapperAge(rapper.getRapperAge());
	
	System.out.println(rapper + "<-- rapper ���Ȯ��");
%>
</body>
</html>