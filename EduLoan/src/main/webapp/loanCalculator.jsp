<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Education Loan Calculator</title>
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

        .content {
            position: relative;
            width: 100%;
            max-width: 1200px;
            display: flex;
            align-items: center;
            justify-content: flex-start;
            padding: 20px;
        }

        .form-container {
            background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 2px solid #ccc;
            border-radius: 10px;
            font-size: 16px;
            background-color: #fafafa;
            transition: all 0.3s ease;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #00C9FF 0%, #92FE9D 100%);
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 18px;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background: linear-gradient(135deg, #92FE9D 0%, #00C9FF 100%);
        }

        label {
            color: #555;
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 10px;
            display: block;
            text-align: left;
        }

        .image-container {
            position: absolute;
            right: 0;
            top: 50%;
            transform: translateY(-50%);
            max-width: 350px;
        }

        .image-container img {
            max-width: 100%;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

    </style>
</head>
<body>

    <div class="content">
        <div class="form-container">
            <h2>Education Loan Calculator</h2>
            <form action="LoanCalculatorServlet" method="post">
                <label for="loanAmount">Loan Amount (₹):</label>
                <input type="number" id="loanAmount" name="loanAmount" required>

                <label for="interestRate">Interest Rate (%):</label>
                <input type="number" id="interestRate" name="interestRate" step="0.01" required>

                <label for="tenure">Loan Tenure (in months):</label> <!-- Changed to months -->
                <input type="number" id="tenure" name="tenure" required>

                <input type="submit" value="Calculate EMI">
            </form>
        </div>

        <div class="image-container">
            <img src="bg.png" alt="Loan Image">
        </div>
    </div>

</body>
</html>
