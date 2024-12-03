<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <style>
        body {
            font-family: 'Poppins', Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .thank-you-container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 500px;
            max-width: 100%;
        }

        h2 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            color: #555;
            margin-bottom: 20px;
        }

        .thank-you-image {
            width: 100%; /* Set image width to 100% to take up full container width */
            max-width: 450px; /* Increase max-width to make the image larger */
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            padding: 12px 20px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

    <div class="thank-you-container">
        <img src="thank you.jpg" alt="Thank You" class="thank-you-image">
        <h2>Thank You!</h2>
        <p>Your loan EMI calculation has been completed.</p>
        <a href="loanCalculator.jsp">Back to Calculator</a>
    </div>

</body>
</html>
