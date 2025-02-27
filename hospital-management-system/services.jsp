<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Services</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #673AB7;
            --accent-color: #FF4081;
            --bg-color: #F3F3F3;
            --table-header: #512DA8;
            --table-hover: #EDE7F6;
            --text-color: #333;
            --button-bg: #673AB7;
            --button-hover: #5E35B1;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: var(--bg-color);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        h1 {
            color: var(--primary-color);
            text-align: center;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .table-container {
            width: 90%;
            max-width: 800px;
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: var(--table-header);
            color: white;
            font-size: 18px;
        }

        tr:nth-child(even) {
            background-color: var(--table-hover);
        }

        tr:hover {
            background-color: rgba(103, 58, 183, 0.1);
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        button {
            background-color: var(--button-bg);
            color: white;
            padding: 12px 24px;
            border: none;
            cursor: pointer;
            font-size: 18px;
            border-radius: 6px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: var(--button-hover);
            transform: translateY(-2px);
        }

        @media (max-width: 600px) {
            .table-container {
                width: 100%;
            }

            th, td {
                padding: 10px;
            }

            button {
                width: 100%;
                padding: 14px;
            }
        }
    </style>
</head>
<body>

    <h1>Blood Bank Contact Information</h1>
    <div class="table-container">
        <table>
            <tr>
                <th>Name</th>
                <th>Contact Number</th>
                <th>Address</th>
            </tr>
            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmngsys", "root", "");
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery("SELECT * FROM blood_bank");
                    while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("contact_number") %></td>
                            <td><%= rs.getString("address") %></td>
                        </tr>
                        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                }
            %>
        </table>
    </div>

    <h1>Medical Lab Tests</h1>
    <div class="table-container">
        <table>
            <tr>
                <th>Test Name</th>
                <th>Price</th>
            </tr>
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmngsys", "root", "");
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery("SELECT * FROM lab_tests");
                    while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getString("test_name") %></td>
                            <td><%= rs.getBigDecimal("price") %></td>
                        </tr>
                        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                }
            %>
        </table>
    </div>

    <div class="btn-container">
        <form action="billinginfo.jsp" method="get">
            <button type="submit">Proceed to Billing</button>
        </form>
    </div>

</body>
</html>
