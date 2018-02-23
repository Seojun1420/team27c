<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.MemberDao" %>
<%@ page import = "service.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>loginAction.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	System.out.println(id + "," + pw + "<--id,pw");
	
	Member member = new Member();
	member.setMember_id(id);
	member.setMember_pw(pw);
	
	MemberDao memberDao = new MemberDao();
	int result=memberDao.loginMember(member);
	System.out.println(result+"<--결과값");
	
	if(result == 1 ) {
		session.setAttribute("sId", member.getMember_id());
		System.out.println("로그인성공");
	} else if(result == 2) {
		System.out.println("비밀번호 불일치");
	} else {
		System.out.println("아이디불일치");
	}
	
	response.sendRedirect(request.getContextPath() + "/index.jsp");

%>

</body>
</html>