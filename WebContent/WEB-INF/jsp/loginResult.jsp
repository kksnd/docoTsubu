<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doco Tsubu</title>
</head>
<body>
<h1>Login</h1>
<% if (loginUser != null) { %>
<p>Hi, <%= loginUser.getName() %>!</p>
<p>You have successfully logged in.</p>
<a href="/docoTsubu/Main">Tsubuyaki</a>
<% } else { %>
<p>Login failed.</p>
<a href="/docoTsubu/">Top</a>
<% } %>
</body>
</html>