<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${ival } <br>
	${sval } <br>
	${vo.getNo() } <br>
	${vo.getEmail() } <br>
	
	<h4>map객체 출력</h4>
	${m.ival } <br>
	${m.sval } <br>
	
	<h4>Context Path</h4>
	${pageContext.request.contextPath }
	
</body>
</html>