<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Elite Care Medical Center</title>
    <style>
      /* Reset & base styling */
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Helvetica Neue', Arial, sans-serif;
      }

      body {
        /* Full-screen background image with a dark overlay for better readability */
        background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),
          url("images/background.jpg") no-repeat center center fixed;
        background-size: cover;
        color: #fff;
        min-height: 100vh;
      }

      /* Centering main container */
      .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px;
        text-align: center;
      }

      /* Header styling */
      .header {
        background-color: rgba(255, 255, 255, 0.1);
        padding: 20px 40px;
        border-radius: 8px;
        margin-bottom: 40px;
      }

      .header h1 {
        font-size: 48px;
        margin-bottom: 10px;
      }

      .header h2 {
        font-size: 28px;
        margin-bottom: 10px;
        color: #a0d2eb;
      }

      .header h4 {
        font-size: 20px;
      }

      /* Section container styling */
      .sections {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 40px;
        width: 100%;
        max-width: 1200px;
      }

      /* Individual section styling */
      .section {
        background-color: rgba(255, 255, 255, 0.9);
        color: #333;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        padding: 30px;
        width: 100%;
        max-width: 400px;
        transition: transform 0.3s ease;
      }

      .section:hover {
        transform: translateY(-5px);
      }

      .section img {
        max-width: 100%;
        border-radius: 8px;
        margin-bottom: 20px;
      }

      .section h3 {
        font-size: 24px;
        margin-bottom: 20px;
        color: #2d3b46;
      }

      .section p {
        font-size: 16px;
        line-height: 1.6;
        margin-bottom: 20px;
      }

      /* Button styling */
      .btn {
        display: block;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        padding: 12px 24px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
      }

      .btn:hover {
        background-color: #0056b3;
      }

      .btn-secondary {
        background-color: #28a745;
      }

      .btn-secondary:hover {
        background-color: #218838;
      }

      .btn-tertiary {
        background-color: #f39c12;
      }

      .btn-tertiary:hover {
        background-color: #e67e22;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="header">
        <h1>Elite Care Medical Center</h1>
        <h2>Excellence in Western Healthcare</h2>
        <h4>Access your personalized health portal</h4>
      </div>
      <div class="sections">
        <div class="section">
          <img src="male-doctor.jpg" alt="Our Expert Team" />
          <h3>Our Expert Team</h3>
          <p>
            At Elite Care Medical Center, our experienced team of medical professionals provides the highest quality care. We are dedicated to ensuring your health and well-being.
          </p>
        </div>
        <div class="section">
          <h3>Login Options</h3>
          <a href="patientLogin.jsp" class="btn">Patient Login</a>
          <br /><br />
          <a href="adminLogin.jsp" class="btn btn-secondary">Administrator Login</a>
          <br /><br />
          <a href="services.jsp" class="btn btn-tertiary">Explore Services</a>
        </div>
      </div>
    </div>
  </body>
</html>
