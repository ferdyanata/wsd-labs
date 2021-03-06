<%-- 
    Document   : loginAction
    Created on : 07/04/2018, 2:54:18 PM
    Author     : Ferdy
    Description : Creating the logic to check whether the username email and password is correct, retreiving data from login.jsp                
--%>

<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action</title>
    </head>
    <body>
        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="diaryApp" class="uts.wsd.DiaryApplication" scope="application">
            <jsp:setProperty name="diaryApp" property="filePath" value="<%= filePath %>"/>
        </jsp:useBean>

        <%
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            /** We need to initialize diaryApp.getUsers() so we can access users.login which checks if email and password
             *   exists in the ArrayList.
            **/
            Users users = diaryApp.getUsers();
            User user = users.login(email, password); %>
            
            <!-- If password is not correct then display "Password incorrect. Click here to try again.", else Logic successful and direct them to main page.-->
            <% if (user != null) { %>
                        <% session.setAttribute("user", user); %>
                        <p>Login successful. Click <a href="index.jsp">here</a> to return to the main page.</p>
                <% } else { %>
                        <p>Password incorrect. Click <a href="login.jsp">here</a> to try again.</p>
                <% }%>
    </body>
</html>
