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
<%	
	String rapperName = request.getParameter("rapperName");
	int rapperAge = Integer.parseInt(request.getParameter("rapperAge"));
	System.out.println(rapperName +","+rapperAge+ "<--rapperName,rapperAge");

	//dao ��ü�����Ѵ�
	Rapper rapper = new Rapper();
	rapper.setRapperName(rapperName);
	rapper.setRapperAge(rapperAge);
	
	RapperDao rapperDao = new RapperDao();
	rapperDao.insertRapperList(rapper);
	System.out.println(rapper + "<--rapper");
	

	//�׳� Ȯ�ο� 
	System.out.println(rapperName +"<-- rapperName");
	System.out.println(rapperAge +" <-- rapperAge");
	//���� ��ä�����Ѵ� rapperName �� getting �Ѵ� �ٵ� set ������ ���°� ������?
	
	System.out.println(rapper + "<-- rapper ���Ȯ��");
	
	response.sendRedirect(request.getContextPath() + "/rapper/rapperList.jsp");	
%>
</body>
</html>