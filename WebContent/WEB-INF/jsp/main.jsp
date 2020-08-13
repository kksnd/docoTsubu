<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User,model.Mutter,java.util.List" %>
<%
User loginUser = (User) session.getAttribute("loginUser");
List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doco Tsubu</title>
</head>
<body>
<h1>Doco Tsubu Main Page</h1>
<p>
You logged in as <%= loginUser.getName() %>
<a href="/docoTsubu/Logout">Logout</a>
</p>
<p><a href="/docoTsubu/Main">Refresh</a></p>
<form action="/docoTsubu/Main" method="post">
<input type="text" name="text">
<input type="submit" value="Post">
</form>
<% if (errorMsg != null) { %>
<%= errorMsg %>
<% } %>
<% for (Mutter mutter : mutterList) { %>
<p><%= mutter.getUserName() %>: <%= mutter.getText() %></p>
<% } %>
</body>
</html>