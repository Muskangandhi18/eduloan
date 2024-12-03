<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Style for the body background */
        body {
            background-image: url('login.jpg'); /* Replace with your image path */
            background-size: cover; /* Makes the image cover the entire page */
            background-position: center; /* Centers the background image */
            background-repeat: no-repeat; /* Ensures the image doesn't repeat */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Style for the login form container */
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            padding: 30px;
            border-radius: 10px;
            width: 350px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Adds a shadow around the form */
            text-align: center;
        }

        h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Style for input fields and icons */
        .input-group {
            position: relative;
            margin-bottom: 20px;
        }

        .input-group i {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #aaa;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 40px);
            padding: 14px 10px 14px 40px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 18px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 15px;
            background-color: green; /* Changed to black */
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 20px;
            cursor: pointer;
            margin-top: 15px;
        }

        input[type="submit"]:hover {
            background-color: #333; /* Slight hover effect */
        }

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 15px;
        }

        /* Style for the register link */
        .register-link {
            margin-top: 15px;
            font-size: 16px;
        }

        .register-link a {
            color: #007bff;
            text-decoration: none;
        }

        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Login</h2>

        <!-- Check for an error message and display it if present -->
        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
            <p class="error-message"><%= errorMessage %></p>
        <%
            }
        %>

        <form action="LoginServlet" method="post">
            <div class="input-group">
                <i class="fas fa-user"></i>
                <input type="text" id="username" name="username" placeholder="Username" required>
            </div>

            <div class="input-group">
                <i class="fas fa-lock"></i>
                <input type="password" id="password" name="password" placeholder="Password" required>
            </div>

            <input type="submit" value="Login">
        </form>

        <!-- Register prompt -->
        <div class="register-link">
            <p>Don't have an account? <a href="register.jsp">Register</a></p>
        </div>
    </div>

</body>
</html>
