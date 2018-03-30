<%-- 
    Document   : index
    Created on : 30/03/2018, 8:11:53 PM
    Author     : Ferdy
--%>

<%@page import="uts.wsd.*"  import="java.util.*"contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diary Keeper</title>
    </head>
    <%
        User user = (User) session.getAttribute("user");
        String loggedInUserEmail = "&lt" + user.getEmail() + "&gt";
        HttpSession userSession = request.getSession();
    %>
    <body>
        <% if(userSession == null) { %>
            <h1>Diary Keeper</h1>
            <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%; ">
                You are not logged in
            </div>
            <div style="text-align: right;"><a href="register.jsp">Register</a></div>
            <% } else { %>
            <h1>Diary Keeper</h1>
            <div style="background: #eee; border: solid 1px #333; text-align: right; width: 100%; ">
                You are logged in as ${user.name} <%= loggedInUserEmail %>
            </div>
            <div style="text-align: right;"><a href="logout.jsp">Logout</a></div>
            <% } %>
    </body>
</html>
