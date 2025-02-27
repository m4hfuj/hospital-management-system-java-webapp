<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Patient Dashboard</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <style>
      :root {
        --primary-color: #4caf50;
        --secondary-color: #45a049;
        --accent-color: #3f51b5;
        --bg-color: #f4f4f4;
        --card-bg: #ffffff;
        --text-color: #333;
        --subtext-color: #777;
        --border-color: #e0e0e0;
      }

      * {
        box-sizing: border-box;
      }

      body {
        font-family: 'Roboto', sans-serif;
        margin: 0;
        padding: 0;
        background-color: var(--bg-color);
      }

      header {
        background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
        color: #fff;
        padding: 20px 0;
        text-align: center;
        margin-bottom: 30px;
      }

      header h1 {
        margin: 0;
        font-size: 2rem;
      }

      .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
      }

      /* Doctor Cards Grid */
      .doctor-cards {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 20px;
        margin-bottom: 40px;
      }

      .doctor-card {
        background-color: var(--card-bg);
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        transition: transform 0.3s ease;
      }

      .doctor-card:hover {
        transform: translateY(-5px);
      }

      .doctor-image {
        width: 100%;
        height: 200px;
        overflow: hidden;
      }

      .doctor-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }

      .doctor-details {
        padding: 15px;
      }

      .doctor-details h2 {
        margin: 0 0 10px;
        font-size: 1.5rem;
        color: var(--text-color);
      }

      .doctor-details p {
        margin: 5px 0;
        color: var(--subtext-color);
      }

      .appointment-btn {
        display: inline-block;
        padding: 10px 15px;
        background-color: var(--primary-color);
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        margin-top: 10px;
        transition: background-color 0.3s ease;
      }

      .appointment-btn:hover {
        background-color: var(--secondary-color);
      }

      /* Table Styles */
      .doctor-table {
        overflow-x: auto;
      }

      .doctor-table table {
        width: 100%;
        border-collapse: collapse;
        background-color: var(--card-bg);
      }

      .doctor-table th,
      .doctor-table td {
        border: 1px solid var(--border-color);
        padding: 12px 15px;
        text-align: left;
      }

      .doctor-table th {
        background-color: var(--accent-color);
        color: #fff;
      }

      @media (max-width: 600px) {
        header h1 {
          font-size: 1.5rem;
        }
      }
    </style>
  </head>
  <body>
    <header>
      <h1>Patient Dashboard</h1>
    </header>
    <div class="container">
      <section class="doctor-cards">
        <div class="doctor-card">
          <div class="doctor-image">
            <img src="images/doctors/1.jpg" alt="Dr. Jitendra Mane" />
          </div>
          <div class="doctor-details">
            <h2>Dr. Solomon Conwell</h2>
            <p><strong>Speciality:</strong> Cardiology</p>
            <p><strong>Qualification:</strong> MBBS, MD (Cardiology)</p>
            <p><strong>Experience:</strong> 10 years</p>
            <a href="bookingPage_1.jsp" class="appointment-btn">Book Appointment</a>
          </div>
        </div>
        <div class="doctor-card">
          <div class="doctor-image">
            <img src="images/doctors/2.jpg" alt="Dr. Indrayani Nene" />
          </div>
          <div class="doctor-details">
            <h2>Dr. James Rode</h2>
            <p><strong>Speciality:</strong> Pediatrics</p>
            <p><strong>Qualification:</strong> MBBS, MD (Pediatrics)</p>
            <p><strong>Experience:</strong> 8 years</p>
            <a href="bookingPage_2.jsp" class="appointment-btn">Book Appointment</a>
          </div>
        </div>
        <div class="doctor-card">
          <div class="doctor-image">
            <img src="images/doctors/3.jpg" alt="Dr. Mahesh Joshi" />
          </div>
          <div class="doctor-details">
            <h2>Dr. Sarah Muller</h2>
            <p><strong>Speciality:</strong> Dermatology</p>
            <p><strong>Qualification:</strong> MBBS, MD (Dermatology)</p>
            <p><strong>Experience:</strong> 12 years</p>
            <a href="bookingPage_3.jsp" class="appointment-btn">Book Appointment</a>
          </div>
        </div>
        <div class="doctor-card">
          <div class="doctor-image">
            <img src="images/doctors/4.jpg" alt="Dr. Sarah Joseph" />
          </div>
          <div class="doctor-details">
            <h2>Dr. Jennifer Joseph</h2>
            <p><strong>Speciality:</strong> Gynecology</p>
            <p><strong>Qualification:</strong> MBBS, MD (Gynecology)</p>
            <p><strong>Experience:</strong> 9 years</p>
            <a href="bookingPage_4.jsp" class="appointment-btn">Book Appointment</a>
          </div>
        </div>
        <div class="doctor-card">
          <div class="doctor-image">
            <img src="images/doctors/5.jpg" alt="Dr. Vishal Nakate" />
          </div>
          <div class="doctor-details">
            <h2>Dr. Kai Proctor</h2>
            <p><strong>Speciality:</strong> Orthopedics</p>
            <p><strong>Qualification:</strong> MBBS, MD (Orthopedics)</p>
            <p><strong>Experience:</strong> 11 years</p>
            <a href="bookingPage_5.jsp" class="appointment-btn">Book Appointment</a>
          </div>
        </div>
      </section>

      <!-- <section class="doctor-table">
        <table>
          <tr>
            <th>Doctor Name</th>
            <th>Speciality</th>
            <th>Qualification</th>
            <th>Experience</th>
            <th>Book Appointment</th>
          </tr>
          <tr>
            <td>Dr. Jitendra Mane</td>
            <td>Cardiology</td>
            <td>MBBS, MD (Cardiology)</td>
            <td>10 years</td>
            <td><a href="bookingPage_1.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
          <tr>
            <td>Dr. Indrayani Nene</td>
            <td>Pediatrics</td>
            <td>MBBS, MD (Pediatrics)</td>
            <td>8 years</td>
            <td><a href="bookingPage_2.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
          <tr>
            <td>Dr. Mahesh Joshi</td>
            <td>Dermatology</td>
            <td>MBBS, MD (Dermatology)</td>
            <td>12 years</td>
            <td><a href="bookingPage_3.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
          <tr>
            <td>Dr. Sarah Joseph</td>
            <td>Gynecology</td>
            <td>MBBS, MD (Gynecology)</td>
            <td>9 years</td>
            <td><a href="bookingPage_4.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
          <tr>
            <td>Dr. Vishal Nakate</td>
            <td>Orthopedics</td>
            <td>MBBS, MD (Orthopedics)</td>
            <td>11 years</td>
            <td><a href="bookingPage_5.jsp" class="appointment-btn">Book Appointment</a></td>
          </tr>
        </table>
      </section> -->
    </div>
  </body>
</html>
