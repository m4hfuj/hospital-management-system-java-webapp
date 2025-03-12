<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hospital Admin Dashboard</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #4a90e2;
            padding: 20px 0;
            font-size: 2.5rem;
        }

        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }

        .section {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            font-size: 1.5rem;
            border-bottom: 2px solid #4a90e2;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #4a90e2;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e6f7ff;
        }

        .btn {
            display: inline-block;
            padding: 12px 20px;
            background-color: #4a90e2;
            color: #fff;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            text-align: center;
        }

        .btn:hover {
            background-color: #357ab8;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }

            h2 {
                font-size: 1.2rem;
            }

            th, td {
                padding: 10px;
            }

            .btn {
                padding: 10px 16px;
            }
        }
    </style>
</head>
<body>
    <h1>Hospital Admin Dashboard</h1>

    <div class="container">
        <div class="section">
            <h2>Patients</h2>
            <div id="patientList">Loading patients...</div>
        </div>

        <div class="section">
            <h2>Appointments</h2>
            <div id="appointmentList">Loading appointments...</div>
        </div>

        <a href="homePage.jsp" class="btn">Go to Homepage</a>
    </div>

    <script>
        // Fetch patient list from the servlet
        fetch('/hospital-management-system/ListPatientsServlet')
            .then(response => {
                if (!response.ok) throw new Error('Failed to load patients.');
                return response.text();
            })
            .then(html => {
                document.getElementById('patientList').innerHTML = html;
            })
            .catch(error => {
                document.getElementById('patientList').innerHTML = `<p style="color:red;">${error.message}</p>`;
                console.error('Error:', error);
            });

        // Fetch appointment list from the servlet
        fetch('/hospital-management-system/ListAppointmentsServlet')
            .then(response => {
                if (!response.ok) throw new Error('Failed to load appointments.');
                return response.text();
            })
            .then(html => {
                document.getElementById('appointmentList').innerHTML = html;
            })
            .catch(error => {
                document.getElementById('appointmentList').innerHTML = `<p style="color:red;">${error.message}</p>`;
                console.error('Error:', error);
            });
    </script>
</body>
</html>
