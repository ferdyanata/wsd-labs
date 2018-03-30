<%--
  Created by IntelliJ IDEA.
  User: Ferdy
  Date: 24/03/2018
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="uts.wsd.*"  import="java.util.*"contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String favCol = request.getParameter("favCol");
    String password = request.getParameter("password");
    String tos = request.getParameter("tos");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>

    <body bgcolor="<%= favCol %>">
        <%
            User user = new User(email, name, password, gender, favCol);
            session.setAttribute("user", user);
        %>
        <% if (tos == null) { %> 
        <p>Sorry, you must agree to the Terms of Service.</p>
        <p>Click <a href="register.jsp">here</a> to go back.</p>
        <% } else { %>
        <h1>Welcome, <%= name%>!</h1>
        <p>Your Email is <%= email%>.</p>
        <p>Your password is <%= password%>
        </p>
        <p>Your gender is <%= gender%>.</p>
        <p>Your favourite colour is <%= favCol %>.</p>
        <% } %>
        <p>Click <a href="index.jsp">here</a> to proceed to the main page.</p>
    </body>
</html>