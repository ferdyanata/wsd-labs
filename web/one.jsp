<%--
  Created by IntelliJ IDEA.
  User: Ferdy
  Date: 24/03/2018
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String favcol = request.getParameter("favcol");
    String password = request.getParameter("password");
    String tos = request.getParameter("tos");
    String submitted = request.getParameter("submitted");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% if (submitted != null && submitted.equals("yes"))
        {%>
    <body bgcolor="<%= favcol%>">
        <% if (tos == null)
            { %>
        <p>Sorry, you must agree to the Terms of Service.</p>
        <p>Click <a href="one.jsp">here</a> to go back.</p>
        <% } else
        {%>
        <h1>Welcome, <%= name%>!</h1>
        <p>Your Email is <%= email%>.</p>
        <p>Your password is <%= password%></p>
        <p>Your gender is <%= gender%>.</p>
        <p>Your favourite colour is <%= favcol%>.</p>
        <% } %>
    <% } else { %>
        <form action="one.jsp" method="POST">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <label for="mail">Email</label>
                        </td>
                        <td>
                            <input type="text" id="mail" name="email">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="name">Full Name</label>
                        </td>
                        <td>
                            <input type="text" id="name" name="name">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="password">Password</label>
                        </td>
                        <td>
                            <input type="password" id="password" name="password">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="gender">Gender</label>
                        </td>
                        <td>
                            <div>
                                <input type="radio" name="gender" value="male">
                                Male
                            </div>
                            <div>
                                <input type="radio" name="gender" value="female">
                                Female
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="favouritecolour">Favourite colour</label>
                        </td>
                        <td>
                            <select id="favouritecolour" name="favcol">
                                <option value="red">Red</option>
                                <option value="green">Green</option>
                                <option value="blue">Blue</option>
                                <option value="yellow">Yellow</option>
                                <option value="orange">Orange</option>
                                <option value="pink">Pink</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="agreetos">Agree to TOS</label>
                        </td>
                        <td>
                            <input type="checkbox" id="agreetos" name="tos">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="register"></label>
                        </td>
                        <td>
                            <input type="submit" id="register" value="Register" name="register">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="hidden" name="submitted" value="yes">
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
    <% }%>
</html>
