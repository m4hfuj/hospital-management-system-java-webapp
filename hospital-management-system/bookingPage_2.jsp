<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Schedule Your Consultation</title>
   <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
   <style>
      :root {
         --primary-color: #3f51b5;
         --accent-color: #f50057;
         --bg-gradient: linear-gradient(135deg, #ece9e6, #ffffff);
         --text-color: #333;
         --label-color: #555;
         --input-border: #ccc;
         --box-shadow: 0 4px 10px rgba(0,0,0,0.1);
         --hover-shadow: 0 6px 12px rgba(0,0,0,0.15);
      }
      
      * {
         box-sizing: border-box;
      }
      
      body {
         margin: 0;
         padding: 0;
         font-family: 'Roboto', sans-serif;
         background: var(--bg-gradient);
         display: flex;
         justify-content: center;
         align-items: center;
         min-height: 100vh;
      }
      
      .container {
         background-color: #fff;
         max-width: 500px;
         width: 100%;
         padding: 30px; /* Reduced padding for a shorter box */
         border-radius: 10px;
         box-shadow: var(--box-shadow);
         transition: box-shadow 0.3s ease;
      }
      
      .container:hover {
         box-shadow: var(--hover-shadow);
      }
      
      h1 {
         text-align: center;
         color: var(--primary-color);
         margin-bottom: 20px; /* Reduced margin for a more compact feel */
         font-size: 2rem;
      }
      
      .form-group {
         margin-bottom: 20px;
      }
      
      label {
         display: block;
         font-weight: 500;
         margin-bottom: 8px;
         color: var(--label-color);
      }
      
      input[type="text"],
      input[type="email"],
      input[type="date"],
      input[type="time"] {
         width: 100%;
         padding: 12px 15px;
         border: 1px solid var(--input-border);
         border-radius: 5px;
         font-size: 16px;
         transition: border-color 0.3s ease, box-shadow 0.3s ease;
      }
      
      input[type="text"]:focus,
      input[type="email"]:focus,
      input[type="date"]:focus,
      input[type="time"]:focus {
         border-color: var(--primary-color);
         box-shadow: 0 0 8px rgba(63, 81, 181, 0.2);
         outline: none;
      }
      
      button[type="submit"] {
         background-color: var(--primary-color);
         color: #fff;
         padding: 15px;
         width: 100%;
         border: none;
         border-radius: 5px;
         font-size: 16px;
         font-weight: 500;
         cursor: pointer;
         transition: background-color 0.3s ease, transform 0.2s ease;
         margin-top: 10px;
      }
      
      button[type="submit"]:hover {
         background-color: var(--accent-color);
         transform: translateY(-2px);
      }
   </style>
</head>
<body>
   <div class="container">
      <h1>Schedule Your Consultation</h1>
      <form action="AppointmentServlet" method="post">
         <div class="form-group">
            <label for="doctor-name">Selected Physician</label>
            <input type="text" id="doctor-name" name="doctor-name" value="Dr. James Rode" required>
         </div>
         <div class="form-group">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>
         </div>
         <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>
         </div>
         <div class="form-group">
            <label for="date">Select Date</label>
            <input type="date" id="date" name="date" required>
         </div>
         <div class="form-group">
            <label for="time">Select Time</label>
            <input type="time" id="time" name="time" required>
         </div>
         <button type="submit">Confirm Appointment</button>
      </form>
   </div>
</body>
</html>
