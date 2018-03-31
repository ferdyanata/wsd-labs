<%@page import="uts.wsd.*"  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diary Keeper</title>
        <style type="text/css">
            .loginStatus {
                background: #eee; 
                border: solid 1px #333; 
                text-align: right; 
                width: 100%;
            }    
        </style>
    </head>
    <%
        User user = (User)session.getAttribute("user");
        String loggedInUserEmail = "&lt" + user.getEmail() + "&gt";
    %>
    <body>
        <h1>Diary Keeper</h1>
        <% if(user != null) { %>
        
            <div class="loginStatus">You are logged in as ${user.name} <%= loggedInUserEmail %></div>
            <div style="text-align: right;"><a href="logout.jsp">Logout</a></div>
            
            <% } else { %>
            
            <div class="loginStatus">You are not logged in</div>
            <div style="text-align: right;"><a href="register.jsp">Register</a></div>
            
         <% } %>
    </body>
</html>