<%--
  Created by IntelliJ IDEA.
  User: Ferdy
  Date: 24/03/2018
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <%
        String filePath = application.getRealPath("WEB-INF/users.xml");  
    %>
    <!-- Setting the scope to application means we are saving the data for the whole application. 
           Data won't be destroyed when user leaves a page or quitting the server. -->
    <jsp:useBean id="diaryApp" class="uts.wsd.DiaryApplication" scope="application">
        <jsp:setProperty name="diaryApp" property="filePath" value="<%= filePath %>"/>
    </jsp:useBean>
    <% Users users = diaryApp.getUsers(); %>
    
    <!---->
    <%
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String favcol = request.getParameter("favcol");
        String password = request.getParameter("password");
        String tos = request.getParameter("tos");
    %>
    <body bgcolor="<%= favcol %>">
        <!-- User must tick the box "tos" (Terms of Service) before able to proceed to the welcome page.-->
        <% if (tos == null)  { %>        

            <style>body{background-color: white;}</style>
            <p>Sorry, you must agree to the Terms of Service.</p>
            <p>Click <a href="register.jsp">here</a> to go back.</p>
         <!-- Once the program passes the first if statement, check if the user's email exists in the ArrayList by accessing "users".java package 
                then display a welcome message with the details they entered. -->
        <% } else if(users.getUser(email) == null && tos != null) {%>

            <h1>Welcome, <%= name %>!</h1>
            <p>Your Email is <%= email%>.</p>
            <p>Your password is <%= password%></p>
            <p>Your gender is <%= gender%>.</p>
            <p>Your favourite colour is <%= favcol%>.</p>
            <p>Click <a href="index.jsp">here</a> to proceed to the main page.</p>
            <!-- Then setup a new user and populate the fields in 'new User'. Create a session for the user so that we can
                    retrieve the attributes on another page. 
                  
                    updateXML - When we add a new user to the ArrayList, the list needs to be saved to XML.
                    -->
            <%
                User user = new User(email, name, password, gender, favcol);
                session.setAttribute("user", user);
                users.addUser(user);
                diaryApp.updateXML(users, filePath);
                diaryApp.saveUsers();
            %>
         <!-- If it passes both conditions above, then it means the email already exists in the ArrayList-->
        <% } else { %>
            <p>This user already exists.</p>
            <p>Click <a href="register.jsp">here</a> to go back or click <a href="login.jsp">here</a> to login.</p>
        <% } %>
</body>
</html>