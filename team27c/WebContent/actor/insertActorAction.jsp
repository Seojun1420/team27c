<!-- team27c 김재희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!-- 폼에서 GET과 POST 방식으로 파라미터를 넘겨 받을 때 request.setCharacterEncoding()을 통한 문자셋 인코딩이 필요함-->
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import = "service.Actor" %>
<%@ page import = "service.ActorDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertActorAction.jsp</title>
</head>
<body>
<%  
	/* getParameter메서드 : 웹브라우저에서 전송받은 request영역에서 name값을 찾아 그 값을 읽는다.
	Integer.parseInt메서드 : 문자열을 int값으로 변환한다. 
	폼에서 입력받은 actorName을 매개변수로 getParameter메서드를 실행해 String타입의 actorName변수로 받는다.
	마찬가지로 actorAge도 int타입의 actorAge변수로 받는다 */
	String actorName = request.getParameter("actorName");
	int actorAge = Integer.parseInt(request.getParameter("actorAge"));
	System.out.println(actorName +"," + actorAge + "<--actorName, actorAge");
	
	/* Actor의 객체를 생성하고 생성한 객체에 actor의 주소값을 할당해준다. 
	actor객체참조변수의 주소를 찾아가 actorName을 매개변수로 set메서드를 실행해 셋팅해준다. 
	마찬가지로 actorAge도 셋팅한다.*/
	Actor actor = new Actor();
	actor.setActorName(actorName);
	actor.setActorAge(actorAge);
	
	/* ActorDao객체를 생성하고 객체의 주소값을 actorDao에 할당해준다.
	actorDao객체참조변수의 주소를 찾아 actor를 매개변수로 insertActorList 메서드를 실행 */
	ActorDao actorDao = new ActorDao();
	actorDao.insertActor(actor);
	System.out.println(actor + "<--actor");
	/* response내장객체 :  클라이언트에 대한 응답 처리를 하는 객체, 실행결과를 브라우저로 되돌려 줄 때 사용하는 객체 
	response객체의 sendRedirect()메서드를 사용하여 웹 서버가 브라우저에게 지정한 페이지로 이동할 때 사용한다. */
	response.sendRedirect(request.getContextPath() + "/actor/actorList.jsp");		
%>
</body>
</html>