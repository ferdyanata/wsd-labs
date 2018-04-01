<%-- 
    Document   : edit_user
    Created on : 31/03/2018, 9:49:55 PM
    Author     : Ferdy
--%>

<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8" %>
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

                /** When setting the attributes below, we retrieve previously entered values 
                 * and set them in our bean. Then we use EL ${user.email} to update new details.
                 */ 
                
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
                            <input id="email" type="text" value="${user.email}" name="email">
                        </td>
                    </tr>
                    <tr>
                        <td><label for="name">Full name</label></td>
                        <td>
                            <input id="name" type="text" value="${user.name}" name="name">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password</label></td>
                        <td>
                            <input id="password" type="password" value="${user.password}" name="password">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="gender">Gender</label>
                        </td>
                        <td>
                            <div>
                                <input id="gender" type="radio" name="gender" value="Male" ${user.gender == 'Male' ? 'checked="checked"': ''} >
                                Male                 
                            </div>
                            <div>   
                                <input type="radio" name="gender" value="Female" ${user.gender == 'Female' ? 'checked="checked"': ''} >
                                Female
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="favouritecolour">Favourite colour</label>
                        </td>
                        <td>
                            <select name="favcol" id="favouritecolour">                     
                                    <option value="red" ${user.favouriteColour == 'red' ? 'selected="selected"' : ''}>Red</option>
                                    <option value="green" ${user.favouriteColour == 'green' ? 'selected="selected"' : ''}>Green</option>
                                    <option value="blue" ${user.favouriteColour == 'blue' ? 'selected="selected"' : ''}>Blue</option>
                                    <option value="yellow" ${user.favouriteColour == 'yellow' ? 'selected="selected"' : ''}>Yellow</option>
                                    <option value="orange" ${user.favouriteColour == 'orange' ? 'selected="selected"' : ''}>Orange</option>
                                    <option value="pink" ${user.favouriteColour == 'pink' ? 'selected="selected"' : ''}>Pink</option>
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