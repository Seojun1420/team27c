<!-- team27c �蹮�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="service.ActressDao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="service.Actress" %>
<!DOCTYPE html>

<table  border="1">
	<tr>
		<td>���̵�</td>
		<td>�̸�</td>
		<td>����</td>
	</tr>
<%
	/* selectActress �޼��带 �����ϰ� ���Ϲ������� ArrayList �̱⶧���� 
		�׳����� ���Ϲ������� ���� Ÿ���� ArrayList �������� �޾ƾ��ϱ⶧����
		actressList������ ArrayList�� �������ش�.
	*/
 	ArrayList<Actress> arrList =new ArrayList<Actress>();
	/*
		ActressDao �� ����ϱ����� ��ü���������� �������ְ� ��ü�������� �ּҸ��Ҵ��Ѵ�.
		�׸��� �ּҸ�ã�ư� �޼��带 �������ش�.
	*/
	ActressDao act= new ActressDao();
	arrList=act.selectActress();
	/*
		�޼�������� ���Ϲ������� arrList ����ұ� ������ for ���� �̿���
		�׳����� ����� ȭ�鿡 ��Ÿ���ش�.
		���������ڰ� private �̱⶧���� get �޼��带 ����ؼ��� ���� �޾ƿü��ִ�.
	*/
	 for(Actress s : arrList){ 
%>
	<tr>
		<td><%=s.getActressId() %></td>
		<td><%=s.getActressName() %></td>
		<td><%=s.getActressAge() %></td>
	</tr>
	<%
		}
	%>
</table>
