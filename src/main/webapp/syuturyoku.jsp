<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String numX = request.getParameter("num_x");
String numY = request.getParameter("num_y");
int x = Integer.parseInt(numX);
int y = Integer.parseInt(numY);

int z = Math.max(x,y);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><%= x %>＋<%= y %>＝<%= x + y %></p>
<p><%out.println(z+"が大きいです"); %></p>

</body>
</html>