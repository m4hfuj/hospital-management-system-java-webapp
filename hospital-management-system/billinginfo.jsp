<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Lab Test Booking</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #eef2f7;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 600px;
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 14px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: white;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        label {
            font-size: 14px;
            color: #333;
            font-weight: 500;
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"] {
            width: calc(100% - 24px);
            padding: 12px;
            margin-top: 6px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            display: block;
        }

        .checkbox-container {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #3498db;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Medical Lab Test Booking</h1>
        <form action="BookingServlet" method="post">
            <table>
                <tr>
                    <th>Select</th>
                    <th>Test Name</th>
                    <th>Price</th>
                </tr>
                <tr>
                    <td><input type="checkbox" name="tests[]" value="Complete Blood Count (CBC)"></td>
                    <td>Complete Blood Count (CBC)</td>
                    <td>$50.00</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="tests[]" value="Lipid Profile"></td>
                    <td>Lipid Profile</td>
                    <td>$75.25</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="tests[]" value="Thyroid Function Test"></td>
                    <td>Thyroid Function Test</td>
                    <td>$80.50</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="tests[]" value="Liver Function Test"></td>
                    <td>Liver Function Test</td>
                    <td>$60.75</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="tests[]" value="Vitamin D Test"></td>
                    <td>Vitamin D Test</td>
                    <td>$90.00</td>
                </tr>
            </table>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required>

            <input type="submit" value="Book Tests">
        </form>
    </div>
</body>
</html>