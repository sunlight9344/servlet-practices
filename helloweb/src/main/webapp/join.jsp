<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
request.setCharacterEncoding("utf-8");

String email = request.getParameter("email");
String pw = request.getParameter("pw");
String birthYear = request.getParameter("birthYear");
String gender = request.getParameter("gender");
String description = request.getParameter("description");
String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=email%></h1>
	<h1><%=pw%></h1>
	<h1><%=birthYear%></h1>
	<h1><%=gender%></h1>
	<p>
		<%=description.replaceAll("\n","<br>")%>
	<p>
	
	<p>
	
		<%
			for(String hobby : hobbies){
		%>
				<strong><%=hobby%></strong><br>
		<%
			}
		%>
	</p>
</body>
</html>