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

	//dao 객체생성한다
	Rapper rapper = new Rapper();
	rapper.setRapperName(rapperName);
	rapper.setRapperAge(rapperAge);
	
	RapperDao rapperDao = new RapperDao();
	rapperDao.insertRapperList(rapper);
	System.out.println(rapper + "<--rapper");
	

	//그냥 확인용 
	System.out.println(rapperName +"<-- rapperName");
	System.out.println(rapperAge +" <-- rapperAge");
	//레퍼 객채생성한다 rapperName 을 getting 한다 근데 set 한적이 없는거 같은데?
	
	System.out.println(rapper + "<-- rapper 출력확인");
	
	response.sendRedirect(request.getContextPath() + "/rapper/rapperList.jsp");	
%>
</body>
</html>