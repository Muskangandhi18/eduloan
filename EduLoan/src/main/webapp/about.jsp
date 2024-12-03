<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Education Loan Tracker</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
    background: #333;
    color: #fff;
    padding: 10px 20px; /* Reduced padding for a narrower header */
    display: flex;
    align-items: center;
    justify-content: space-between; /* Space between logo and buttons */
    box-sizing: border-box;
    width: 100%;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
    margin-bottom: 20px; /* Add margin to push content down */
}

.container {
    width: calc(100% - 60px); /* Increased width for broader content */
    max-width: 1400px; /* Increased maximum width for broader content */
    margin: 80px auto 0 auto; /* Adjust margin to account for fixed header height */
    padding: 0 30px; /* Adjusted padding for the container */
    box-sizing: border-box;
    overflow: hidden;
}
        
        .logo {
            display: flex;
            align-items: center;
        }
        .logo img {
            height: 80px;
            width: 80px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #fff;
        }
        .logo .logo-name {
            margin-left: 15px;
            color: #fff;
            font-size: 24px;
            font-weight: bold;
        }
        .header-buttons {
            display: flex;
            align-items: center;
            margin-left: auto; /* Push buttons to the right */
        }
        .header-buttons a {
            color: #fff;
            padding: 8px 15px;
            text-decoration: none;
            border-radius: 4px;
            margin-left: 10px;
            font-weight: bold;
            display: inline-block;
        }
        .header-buttons .login {
            background: #007bff;
        }
        .header-buttons .register {
            background: #28a745;
        }
        .header-buttons a:hover {
            opacity: 0.8;
        }
        .social-share {
            display: flex;
            align-items: center;
            margin-left: 20px; /* Margin to separate from the right button */
        }
        .social-share a {
            color: #fff;
            font-size: 24px;
            margin: 0 10px;
            text-decoration: none;
            display: inline-block;
            transition: color 0.3s ease;
        }
        .social-share a:hover {
            color: #007bff;
        }
        .social-share .fa-whatsapp {
            color: #25D366; /* WhatsApp green */
        }
        .social-share .fa-instagram {
            color: #C13584; /* Instagram gradient color */
        }
        .social-share .fa-facebook {
            color: #4267B2; /* Facebook blue */
        }
        .container {
            width: calc(100% - 60px); /* Increased width for broader content */
            max-width: 1400px; /* Increased maximum width for broader content */
            margin: 80px auto 0 auto; /* Adjust margin to account for fixed header height */
            padding: 0 30px; /* Adjusted padding for the container */
            box-sizing: border-box;
            overflow: hidden;
        }
        section {
            padding: 30px;
            background: #fff;
            margin-top: 10px;
        }
        section h2 {
            font-size: 28px;
            margin-top: 0;
        }
        section p {
            font-size: 18px;
        }
        section ul {
            font-size: 18px;
        }
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 10px 30px; /* Adjusted padding for footer */
            margin-top: 20px;
        }
        .about-image {
            display: block;
            margin: 20px auto;
            max-width: 60%; /* Adjusted size for broader content */
            height: auto;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="logo.jpg" alt="Education Loan Tracker Logo">
            <div class="logo-name">EduLoan</div>
        </div>
        <div class="header-buttons">
            <a href="register.jsp" class="register">Register / Login</a>
        </div>
        <div class="social-share">
            <a href="https://wa.me/?text=Check out this page: [URL]" target="_blank" class="fab fa-whatsapp" title="Share on WhatsApp"></a>
            <a href="https://www.instagram.com/share?url=[URL]" target="_blank" class="fab fa-instagram" title="Share on Instagram"></a>
            <a href="https://www.facebook.com/sharer/sharer.php?u=[URL]" target="_blank" class="fab fa-facebook" title="Share on Facebook"></a>
        </div>
    </header>

    <div class="container">
        <section>
            <h2>What is Education Loan Tracker?</h2>
            <p>Education Loan Tracker is a comprehensive web application designed to help students and their families manage and track education loans efficiently. Our platform allows users to calculate loan eligibility, track loan repayment schedules, and manage loan-related tasks all in one place.</p>

<p><strong>Inputs Required:</strong></p>
<ul>
    <li><strong>Principal Loan Amount (P):</strong> The total amount of the loan taken.</li>
    <li><strong>Annual Interest Rate (R):</strong> The annual interest rate charged on the loan.</li>
    <li><strong>Loan Tenure (N):</strong> The duration over which the loan will be repaid, usually expressed in months.</li>
</ul>
            
            <img src="loan.jpg" alt="Education Loan Tracker" class="about-image" />

            <h2>Features</h2>
            <ul>
                <li>Loan Eligibility Calculator</li>
                <li>Track Loan Repayment Schedules</li>
                <li>Manage Loan Applications</li>
                <li>User Account Management with Secure Login</li>
                <li>Comprehensive Dashboard for Loan Overview</li>
            </ul>

            <h2>Our Mission</h2>
            <p>Our mission is to simplify the process of managing education loans, making it easier for students to focus on their education without the stress of complicated loan management. We aim to provide a user-friendly and secure platform that meets the needs of both students and financial institutions.</p>

            <h2>Contact Us</h2>
            <p>If you have any questions or need support, feel free to <a href="contact.jsp">contact us</a>.</p>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 Education Loan Tracker. All Rights Reserved.</p>
    </footer>
</body>
</html>
