<%-- 
    Document   : login.jsp
    Created on : 07/04/2018, 2:53:09 PM
    Author     : Ferdy
    Description : Display login form to the user.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <!-- Constructs a filesystem path to the WEB-INF/users.xml
             file that is relative to the WebContent directory of your web application.
        -->

        <form action="loginAction.jsp" method="POST">
            <table>
                <tr>
                    <td>
                        <label for="emailLogin">Email</label>
                    </td>
                    <td>
                        <input id="emailLogin" type="text" name="email">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="passwordLogin">Password</label>
                    </td>
                    <td>
                        <input id="passwordLogin" type="password" name="password">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="loginButton"></label>
                    </td>
                    <td>
                        <input id="loginButton" type="submit" value="Login">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
