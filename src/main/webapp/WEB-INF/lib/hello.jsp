<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.println("hello World");
out.println("<br>");
out.println(java.time.LocalDateTime.now());
out.println("<span style=\"color: red\">こんにちは</span>");

%>
</body>
</html>