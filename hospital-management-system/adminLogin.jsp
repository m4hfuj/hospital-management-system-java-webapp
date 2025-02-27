<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Login</title>
    <style>
      /* CSS Reset & Base Styles */
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
          url("loginBG.webp") no-repeat center center fixed;
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
      }
      
      /* Fade-in Animation */
      @keyframes fadeIn {
        from {
          opacity: 0;
          transform: translateY(20px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }
      
      /* Container Styles */
      .container {
        background: rgba(255, 255, 255, 0.95);
        border-radius: 10px;
        padding: 40px;
        width: 400px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        animation: fadeIn 0.8s ease-out;
      }
      
      h1 {
        text-align: center;
        font-size: 32px;
        margin-bottom: 20px;
        color: #333;
      }
      
      /* Form Styles */
      form {
        display: flex;
        flex-direction: column;
      }
      
      .form-group {
        margin-bottom: 20px;
      }
      
      label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #333;
      }
      
      input {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        transition: border 0.3s ease;
      }
      
      input:focus {
        outline: none;
        border-color: #4caf50;
      }
      
      button {
        width: 100%;
        padding: 12px;
        margin-top: 10px;
        background-color: #4caf50;
        border: none;
        border-radius: 5px;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
      }
      
      button:hover {
        background-color: #45a049;
        transform: scale(1.02);
      }
      
      .alert {
        color: red;
        font-weight: bold;
        margin-bottom: 20px;
        text-align: center;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Admin Login</h1>
      <% if (request.getAttribute("error") != null) { %>
        <div class="alert">
          <%= request.getAttribute("error") %>
        </div>
      <% } %>
      <form action="adminLoginServlet" method="post">
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required />
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
          <input type="password" id="password" name="password" required />
        </div>
        <button type="submit">Login</button>
      </form>
    </div>
  </body>
</html>
