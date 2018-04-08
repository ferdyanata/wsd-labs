<%-- 
    Document   : index
    Created on : 31/03/2018, 7:47:56 PM
    Author     : Ferdy
--%>

<%@page  import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <style>
            .loggedInBackground {
                background: #eee; border: solid 1px #333; text-align: right; width: 100%;
            }
        </style>
    </head>
    <body>
        
        <h1>Diary Keeper</h1>
        <!-- Retrieve the attribute in getAttribute("user") created in welcome.jsp 
               This needs to be inside the if statement so the compiler understands which session we're 
               referring to.-->
        <% if(session.getAttribute("user") != null) { 
            User user = (User)session.getAttribute("user"); 
            String log = " &lt" + user.getEmail() + "&gt";
        %>
            <div class="loggedInBackground">
            You are logged in as <%= user.getName() %> <%= log %>
            </div>
            <div style="text-align: right;">
                <a href="logout.jsp">Logout</a>
            </div>
            <div>
                <ul>
                    <li><a href="edit_user.jsp">My Account</a></li>
                </ul>
            </div>
        <% } else { %>
            <div class="loggedInBackground">
                You are not logged in
            </div>
            <div style="text-align: right;">
                <a href="login.jsp">Login | </a>
                <a href="register.jsp">Register</a>
            </div>
        <% } %>
    </body>
</html>
