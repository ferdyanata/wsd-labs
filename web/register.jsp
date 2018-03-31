<%--
  Created by IntelliJ IDEA.
  User: Ferdy
  Date: 24/03/2018
  Time: 12:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Register</title>
    </head>
    <body>
        <!-- 'for' in label corresponds to 'id' in input
                name attribute is used to store value that can be -->
        <h1>Register</h1>

        <form action="welcome.jsp" method="POST">
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
                                <input type="radio" name="gender" value="Male">
                                Male
                            </div>
                            <div>
                                <input type="radio" name="gender" value="Female">
                                Female
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="favouritecolour">Favourite colour</label>
                        </td>
                        <td>
                            <select name="favcol">
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
                </tbody>
            </table>
        </form>
    </body>
</html>
