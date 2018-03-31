<%-- 
    Document   : edit_user
    Created on : 31/03/2018, 9:49:55 PM
    Author     : Ferdy
--%>

    <%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Edit User</title>
        </head>

        <body>
            <%
            User user = (User) session.getAttribute("user");
            
            if(request.getParameter("email") != null) {
                String email = request.getParameter("email");
                String name = request.getParameter("name");
                String password = request.getParameter("password");
                String gender = request.getParameter("gender");
                String favcol = request.getParameter("favcol");
                user.setEmail(email);
                user.setName(name);
                user.setPassword(password);
                user.setGender(gender);
                user.setFavouriteColour(favcol);
            %>
            <p>Details updated.</p>

            <% } %>


            <h1>My Account</h1>

            <form action="edit_user.jsp" method="POST">

                <table>
                    <tr>
                        <td><label for="email">Email</label></td>
                        <td>
                            <input type="text" value="${user.email}" name="email">
                        </td>
                    </tr>
                    <tr>
                        <td><label for="name">Full name</label></td>
                        <td>
                            <input type="text" value="${user.name}" name="name">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password</label></td>
                        <td>
                            <input type="password" value="${user.password}" name="password">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="gender">Gender</label>
                        </td>
                        <td>
                            <div>
                                <input type="radio" name="gender" value="value="<% user.getGender(); %>"">
                                Male
                            </div>
                            <div>   
                                <input type="radio" name="gender" value="<% user.getGender(); %>">
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
                                <option value="${user.favouriteColour}">Red</option>
                                <option value="${user.favouriteColour}">Green</option>
                                <option value="blue">Blue</option>
                                <option value="yellow">Yellow</option>
                                <option value="orange">Orange</option>
                                <option value="pink">Pink</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="Save">
                        </td>
                    </tr>
                </table>

                <p>Return to the <a href="index.jsp">main page</a>.</p>
            </form>
        </body>

        </html>