<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AppointmentPro | Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        :root {
            --bg-dark: #0d1b2a;
            --card-dark: #1b263b;
            --accent: #00b4d8;
            --accent-hover: #0096c7;
            --text-light: #e0e1dd;
            --text-muted: #a8b2d1;
            --border-dark: #415a77;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: var(--bg-dark);
            color: var(--text-light);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .dashboard-container {
            width: 100%;
            max-width: 1200px;
            background: var(--card-dark);
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            overflow: hidden;
            border: 1px solid var(--border-dark);
        }

        header {
            background: linear-gradient(135deg, #0d1b2a, #1b263b);
            padding: 30px;
            text-align: center;
            border-bottom: 1px solid var(--border-dark);
        }

        header h1 {
            font-size: 2.5rem;
            color: var(--accent);
            margin-bottom: 10px;
        }

        header p {
            color: var(--text-muted);
            font-size: 1.1rem;
        }

        .portal-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
            padding: 30px;
        }

        .portal-card {
            background: #243447;
            border-radius: 10px;
            padding: 25px;
            transition: all 0.3s ease;
            border: 1px solid var(--border-dark);
            box-shadow: 0 5px 15px rgba(0, 180, 216, 0.1);
        }

        .portal-card:hover {
            transform: translateY(-5px);
            border-color: var(--accent);
            box-shadow: 0 8px 25px rgba(0, 180, 216, 0.2);
        }

        .card-header {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .card-icon {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: rgba(0, 180, 216, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 15px;
            color: var(--accent);
            font-size: 1.5rem;
        }

        .card-title {
            font-size: 1.3rem;
            color: var(--text-light);
        }

        .card-desc {
            color: var(--text-muted);
            margin-bottom: 25px;
            font-size: 0.95rem;
        }

        .login-btn {
            display: inline-block;
            padding: 12px 25px;
            background: var(--accent);
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
            font-weight: 500;
            transition: all 0.3s ease;
            font-size: 0.95rem;
            text-align: center;
        }

        .login-btn:hover {
            background: var(--accent-hover);
            box-shadow: 0 0 10px rgba(0, 180, 216, 0.3);
        }

        footer {
            text-align: center;
            padding: 20px;
            background: var(--bg-dark);
            color: var(--text-muted);
            font-size: 0.9rem;
            border-top: 1px solid var(--border-dark);
        }

        @media (max-width: 768px) {
            header h1 {
                font-size: 2rem;
            }

            .portal-grid {
                grid-template-columns: 1fr;
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <header>
            <h1>AppointmentPro</h1>
            <p>Manage all your appointments in one powerful dashboard</p>
        </header>

        <div class="portal-grid">
            <div class="portal-card">
                <div class="card-header">
                    <div class="card-icon">
                        <i class="fas fa-user-shield"></i>
                    </div>
                    <h3 class="card-title">Admin Portal</h3>
                </div>
                <p class="card-desc">Control users, appointments, and system settings.</p>
                <a href="AdminLogin" class="login-btn">Admin Login</a>
            </div>

            <div class="portal-card">
                <div class="card-header">
                    <div class="card-icon">
                        <i class="fas fa-user-tie"></i>
                    </div>
                    <h3 class="card-title">Employee Portal</h3>
                </div>
                <p class="card-desc">Check your schedule, availability, and requests.</p>
                <a href="E1_LoginEmployee" class="login-btn">Employee Login</a>
            </div>

            <div class="portal-card">
                <div class="card-header">
                    <div class="card-icon">
                        <i class="fas fa-user"></i>
                    </div>
                    <h3 class="card-title">User Portal</h3>
                </div>
                <p class="card-desc">Book, update, or cancel your appointments easily.</p>
                <a href="U2_UserRegistration" class="login-btn">User Login/Register</a>
            </div>
        </div>

        <footer>
            &copy; 2025 AppointmentPro. All rights reserved.
        </footer>
    </div>
</body>
</html>
