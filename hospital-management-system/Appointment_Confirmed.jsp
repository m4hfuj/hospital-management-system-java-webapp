<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Appointment Confirmed</title>
   <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
   <style>
      :root {
         --primary-color: #4a90e2;
         --accent-color: #ff4081;
         --bg-gradient: linear-gradient(135deg, #f3f5f7, #e6ebf1);
         --container-bg: #ffffff;
         --text-color: #2c3e50;
         --subtext-color: #6c757d;
         --btn-bg: #4a90e2;
         --btn-hover: #357ab7;
         --btn-padding: 14px 28px;
      }

      * {
         box-sizing: border-box;
         margin: 0;
         padding: 0;
      }

      body {
         font-family: 'Inter', sans-serif;
         background: var(--bg-gradient);
         display: flex;
         justify-content: center;
         align-items: center;
         height: 100vh;
         padding: 20px;
      }

      .container {
         background-color: var(--container-bg);
         padding: 40px;
         border-radius: 12px;
         box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
         text-align: center;
         max-width: 450px;
         width: 100%;
         animation: fadeIn 0.6s ease-in-out;
      }

      @keyframes fadeIn {
         from { opacity: 0; transform: translateY(-20px); }
         to { opacity: 1; transform: translateY(0); }
      }

      h1 {
         color: var(--primary-color);
         font-size: 2rem;
         font-weight: 700;
         margin-bottom: 15px;
      }

      p {
         color: var(--subtext-color);
         font-size: 1.1rem;
         margin-bottom: 30px;
      }

      .btn {
         display: inline-block;
         background-color: var(--btn-bg);
         color: #fff;
         text-decoration: none;
         padding: var(--btn-padding);
         border-radius: 8px;
         font-size: 1rem;
         font-weight: 500;
         transition: background-color 0.3s ease, transform 0.2s ease;
         margin: 10px 5px;
         box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      }

      .btn:hover {
         background-color: var(--btn-hover);
         transform: translateY(-2px);
         box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
      }

      @media (max-width: 400px) {
         .btn {
            display: block;
            width: 100%;
            margin: 10px 0;
         }
      }
   </style>
</head>
<body>
   <div class="container">
      <h1>Appointment Confirmed</h1>
      <p>Your appointment has been successfully booked. Thank you for choosing our hospital.</p>
      <a href="homePage.jsp" class="btn">Go to Homepage</a>
      <a href="patientDashboard.jsp" class="btn">View Dashboard</a>
   </div>
</body>
</html>
