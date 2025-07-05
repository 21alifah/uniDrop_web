<%-- 
    Document   : admin_login
    Created on : Jul 5, 2025, 6:26:38 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f7ff;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .login-container {
                background-color: white;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                width: 350px;
            }
            h1 {
                color: #1e3a8a;
                text-align: center;
                margin-bottom: 25px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            td {
                padding: 8px 0;
            }
            input[type="text"], 
            input[type="password"] {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type="submit"] {
                background-color: #4169E1;
                color: white;
                border: none;
                padding: 8px 16px;
                border-radius: 4px;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #5a85ec;
            }
            .error-message {
                color: red;
                text-align: center;
                margin-top: 15px;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <h1>Admin Login</h1>

            <form action="AdminLoginServlet" method="POST">
                <table border="0" cellspacing="4" cellpadding="4">
                    <tbody>
                        <tr>
                            <td>Username:</td>
                            <td><input type="text" name="username" required /></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password" required /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" value="Login" />
                                <input type="reset" value="Reset" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>

            <%
                String message = (String) request.getAttribute("errMessage");
                if (message != null) {
            %>
            <p class="error-message"><%= message %></p>
            <%
                }
            %>
        </div>
    </body>
</html>
