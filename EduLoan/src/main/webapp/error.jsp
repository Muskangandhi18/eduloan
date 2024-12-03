<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
</head>
<body>
    <h2>An error occurred</h2>
    <p><%= request.getAttribute("errorMessage") %></p>
    <p><a href="login.jsp">Go back to Login</a></p>
</body>
</html>
