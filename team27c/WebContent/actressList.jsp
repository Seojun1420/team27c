<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%@page import="service.ActressDao" %>

<%
	ActressDao act= new ActressDao();
	act.selectActress();
%>
