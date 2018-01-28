<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
</head>
<body>
    <% String s = request.getParameter("action"); %>
    <% String u = request.getParameter("username"); %>
    <% String i = request.getParameter("postid"); %>
    <% boolean vld = false; %>
    <% if (s == null || s.isEmpty() || u == null || i == null) {%>
        <div><h1>Invalid Address: Missing Action or Postid/Username</h1></div>
    <%-- <% } try {temp = Integer.parseInt(i); vld = true;} catch (NumberFormatException ex) {} finally {}%>
    <% if (vld == false) { %>
        <div><h1>Invalid Address: Invalid Postid</h1></div> --%>
    <% } else { %>
    <div><h1>Edit Post</h1></div>
    <%-- servlet name mapped to "post" --%>
    <form action="post" method="POST">
        <div>
            <button type="submit" name="action" value="save">Save</button>
            <button type="submit" name="action" value="list">Close</button>
            <button type="submit" name="action" value="preview">Preview</button>
            <button type="submit" name="action" value="delete">Delete</button>
        </div>
        <input type="hidden" name="username" value='<%= request.getParameter("username") %>'>
        <input type="hidden" name="postid" value='<%= request.getParameter("postid") %>'>
        <div>
            <label for="title">Title</label>
            <input type="text" name='title' value='<%= request.getAttribute("title") %>'>
        </div>
        <div>
            <label for="body">Body</label>
            <textarea style="height: 20rem;" name='body'><%= request.getAttribute("body") %></textarea>
        </div>
    </form>
    <% } %>
</body>
</html>
