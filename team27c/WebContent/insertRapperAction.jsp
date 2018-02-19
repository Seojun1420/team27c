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
<% //dao 객체생성한다
	RapperDao rapperdao = new RapperDao();
	rapperdao.selectRapperList();
	//String 형식의 rapperName 을 준비한다?
	String rapperName = request.getParameter("rapperName");
	String rapperAge = request.getParameter("rapperAge");
	//그냥 확인용 
	System.out.println(rapperName +"<-- rapperName");
	System.out.println(rapperAge +" <-- rapperAge");
	//레퍼 객채생성한다 rapperName 을 getting 한다 근데 set 한적이 없는거 같은데?
	Rapper rapper = new Rapper();
	rapper.setRapperName(rapper.getRapperName());
	rapper.setRapperAge(rapper.getRapperAge());
	
	System.out.println(rapper + "<-- rapper 출력확인");
%>
</body>
</html>