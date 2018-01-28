<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Post List</title>
</head>
<body>
    <div>
        <% String s = request.getParameter("username"); %>
        <% if (s == null || s.isEmpty()) {%>
            <div><h1>Invalid Address: Missing Username</h1></div>
        <% } else { %>
        <%-- open url -->use GET --%>
        <form action="post" id="0" method="GET">
            <input type="hidden" name="username" value=<%=s %>>
            <input type="hidden" name="postid" value="0">
            <button type="submit" name="action" value="open">New Post</button>
        </form>
    </div>
    <%@ page import ="java.util.*" %>
    <table>
        <tr><th>Title</th>
            <th>Created</th>
            <th>Modified</th>
            <th>&nbsp;</th>
        </tr>
        <% int count=Integer.parseInt(request.getAttribute("count").toString()); %>
        <% ArrayList<String> names = (ArrayList)request.getAttribute("usernames"); %>
        <% ArrayList<Integer> ids = (ArrayList)request.getAttribute("postids"); %>
        <% ArrayList<String> titles = (ArrayList)request.getAttribute("titles"); %>
        <% ArrayList<String> createds = (ArrayList)request.getAttribute("f_create_time"); %>
        <% ArrayList<String> modifieds = (ArrayList)request.getAttribute("f_modify_time"); %>
        <% for (int i=0; i<count; i++) { %>
        <tr>
            <form id=<%= i+1 %> action="post" method="POST">
                <input type="hidden" name="username" value='<% out.print(names.get(i)); %>'>
                <input type="hidden" name="postid" value='<% out.print(ids.get(i)); %>'>
                <td><% out.print(titles.get(i)); %></td>
                <td><% out.print(createds.get(i)); %></td>
                <td><% out.print(modifieds.get(i)); %></td>
                <td>
                    <button type="submit" name="action" value="open">Open</button>
                    <button type="submit" name="action" value="delete">Delete</button>
                </td>
            </form>
        </tr>
        <% } %>
    </table>
    <% } %>
</body>
</html>
