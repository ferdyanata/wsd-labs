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
                            <input id="email" type="text" value="<%= user.getEmail() %>" name="email">
                        </td>
                    </tr>
                    <tr>
                        <td><label for="name">Full name</label></td>
                        <td>
                            <input id="name" type="text" value="<%= user.getName() %>" name="name">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password</label></td>
                        <td>
                            <input id="password" type="password" value="<%= user.getPassword() %>" name="password">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="gender">Gender</label>
                        </td>
                        <td>
                            <div>
                                
                                <% String checked = "";
                                    if(user.getGender().equals("Male")){  checked="checked"; } %>                                    
                                <input type="radio" name="gender" value="Male" <%= checked %>>
                                <%-- The reason we have checked empty here as well is we ensure that it is not preselected before allowing the user
                                     to select a button --%>
                                <%= checked = ""%>
                                Male                 
                            </div>
                            <div>
                                <% if(user.getGender().equals("Female")){  checked="checked"; }%>
                                <input type="radio" name="gender" value="Female" <%= checked %>>
                                <%= checked = ""%>
                                Female
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Favourite colour</label>
                        </td>
                        <td>
                            <select name="favcol">              
                                <% String selected = "";%>
                                <option value="red" <%= (user.getFavouriteColour().equals("red")) ? "selected" : " "  %>>Red</option>                  
                                <option value="green" <%= (user.getFavouriteColour().equals("green")) ? "selected" : " "  %>>Green</option>
                                <option value="blue" <%= (user.getFavouriteColour().equals("blue")) ? "selected" : " "  %> >Blue</option>
                                <option value="yellow" <%= (user.getFavouriteColour().equals("yellow")) ? "selected" : " "  %>>Yellow</option>
                                <option value="orange" <%= (user.getFavouriteColour().equals("orange")) ? "selected" : " "  %> >Orange</option>
                                <option value="pink" <%= (user.getFavouriteColour().equals("pink")) ? "selected" : " "  %>>Pink</option>
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