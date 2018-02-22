<!-- team27c ±èÀçÈñ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "service.ActorDao" %>
<!DOCTYPE html>
	<%
		int actorId = Integer.parseInt(request.getParameter("actorId"));
		System.out.println(actorId+"<--actorId");
		ActorDao actorDao = new ActorDao();
		actorDao.deleteActorList(actorId);
		response.sendRedirect(request.getContextPath() + "/actorList.jsp");
	%>
