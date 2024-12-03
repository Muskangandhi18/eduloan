<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('register.jpg'); /* Add your image file path here */
            background-size: cover;               /* Cover the entire page */
            background-position: center;          /* Center the background image */
            background-repeat: no-repeat;         /* Prevent image repetition */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
            box-sizing: border-box;
            text-align: center;
        }
        h2 {
            margin-top: 0;
            font-size: 24px;
        }
        .input-group {
            position: relative;
            margin-bottom: 15px;
        }
        .input-group i {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #aaa;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: calc(100% - 40px);
            padding: 12px 10px 12px 40px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 15px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        .login-link {
            margin-top: 15px;
        }
        .login-link a {
            color: #007bff;
            text-decoration: none;
            font-size: 16px;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
        .message {
            margin: 15px 0;
            padding: 10px;
            border-radius: 4px;
            font-size: 16px;
        }
        .error {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }
        .success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Register</h2>
        <form action="RegisterServlet" method="post">
            <div class="input-group">
                <i class="fas fa-user"></i>
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>

            <div class="input-group">
                <i class="fas fa-lock"></i>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <div class="input-group">
                <i class="fas fa-envelope"></i>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <input type="submit" value="Register">
        </form>

        <!-- Display messages -->
        <div class="message">
            <% 
                String errorMessage = (String) request.getAttribute("errorMessage");
                String successMessage = (String) request.getAttribute("successMessage");
                if (errorMessage != null) {
                    out.print("<div class='error'>" + errorMessage + "</div>");
                }
                if (successMessage != null) {
                    out.print("<div class='success'>" + successMessage + "</div>");
                }
            %>
        </div>

        <div class="login-link">
            <p>Already have an account? <a href="login.jsp">Login here</a></p>
        </div>
    </div>
</body>
</html>
