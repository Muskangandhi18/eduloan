<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Loan EMI Result</title>
    <style>
        /* General body settings */
        body {
            font-family: 'Poppins', Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Container for the result */
        .result-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
            max-width: 100%;
        }

        /* Headings for result title */
        h2 {
            color: #333;
            margin-bottom: 20px;
            font-size: 26px;
            font-weight: bold;
            border-bottom: 2px solid #f0f0f0;
            padding-bottom: 10px;
        }

        /* Result styling */
        .result p {
            font-size: 18px;
            color: #555;
            margin: 12px 0;
        }

        .result strong {
            color: #007bff;
            font-size: 22px;
        }

        /* Button for calculating again and exit */
        .btn-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
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
            width: 48%;
            text-align: center;
        }

        a.exit {
            background-color: #dc3545;
        }

        a:hover {
            background-color: #218838;
        }

        a.exit:hover {
            background-color: #c82333;
        }

        /* Adding some hover effects */
        .result-container:hover {
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>

    <div class="result-container">
        <h2>Loan EMI Calculation Result</h2>

        <div class="result">
            <p>Loan Amount: ₹<%= request.getAttribute("loanAmount") %></p>
            <p>Interest Rate: <%= request.getAttribute("interestRate") %> %</p>
            <p>Tenure: <%= request.getAttribute("tenure") %> months</p>
            <p><strong>Monthly EMI: ₹<%= String.format("%.2f", request.getAttribute("emi")) %></strong></p>
        </div>

        <div class="btn-group">
            <a href="loanCalculator.jsp">Calculate Again</a>
            <a href="thankyou.jsp" class="exit">Exit</a>
        </div>
    </div>

</body>
</html>
