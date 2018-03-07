<!-- team27c 김재희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>insertActorForm.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function () {
		$("#submit").click(function () {
			if($("#actorName") == "" || $("actorName").length <=1) {
				alert("남배우이름을 입력해주세요")
				return false;
			}
			
			if($("#actorAge") < 0 || $("#actorAge") > 100) {
				alert("나이를 제대로 입력해주세요")
				return false;
			}
		});
	}); 
</script>
</head>
<body>
		<h1>insertActorForm.jsp</h1>
			<!-- POST방식으로 폼에서 입력한 정보들을 insertActorAction.jsp로 넘겨준다. -->
			<form action="<%= request.getContextPath() %>/actor/insertActorAction.jsp" method="post">
				<table border="1">
					<tr>
						<th>남배우이름</th>
						<td><input type="text" name="actorName" id="actorName" size="10"></td>
					</tr>
					<tr>
						<th>남배우나이</th>
						<td><input type="text" name="actorAge" id="actorAge"size="10"></td>
					</tr>
					<tr>
						<th>Insert</th>
						<td><input type="submit" value="등록하기" id="submit"></td>
					</tr>
				</table>
			</form>	
				
</body>
</html>