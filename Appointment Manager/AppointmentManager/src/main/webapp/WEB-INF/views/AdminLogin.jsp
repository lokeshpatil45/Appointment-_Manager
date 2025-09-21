<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login | AppointmentPro</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    :root {
        --dark-blue: #0a192f;
        --navy: #172a45;
        --light-navy: #303f60;
        --accent: #00b4d8;
        --accent-hover: #0096c7;
        --text-light: #e0e1dd;
        --text-muted: #a8b2d1;
        --border-color: #415a77;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        background-color: var(--dark-blue);
        color: var(--text-light);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        padding: 20px;
        animation: fadeIn 1.5s ease-in;
    }

    .login-box {
        background-color: var(--navy);
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.4);
        width: 100%;
        max-width: 400px;
        border: 1px solid var(--border-color);
        animation: slideUp 1s ease forwards;
        transform: translateY(20px);
        opacity: 0;
    }

    .login-box h2 {
        text-align: center;
        margin-bottom: 30px;
        color: var(--accent);
        animation: fadeIn 2s ease-in;
    }

    .form-group {
        margin-bottom: 20px;
        animation: fadeIn 1.5s ease-in forwards;
    }

    .form-group input {
        width: 100%;
        padding: 12px 15px;
        background: var(--light-navy);
        border: 1px solid var(--border-color);
        border-radius: 6px;
        color: var(--text-light);
        font-size: 1rem;
        transition: border 0.3s, box-shadow 0.3s;
    }

    .form-group input:focus {
        border-color: var(--accent);
        box-shadow: 0 0 5px var(--accent);
        outline: none;
    }

    .form-group input::placeholder {
        color: var(--text-muted);
    }

    .submit-btn {
        width: 100%;
        padding: 12px;
        background-color: var(--accent);
        border: none;
        border-radius: 6px;
        color: #fff;
        font-size: 1rem;
        font-weight: bold;
        cursor: pointer;
        transition: background 0.3s ease, transform 0.2s ease;
    }

    .submit-btn:hover {
        background-color: var(--accent-hover);
        transform: translateY(-2px);
        box-shadow: 0 0 10px rgba(0, 180, 216, 0.3);
    }

    /* Animations */
    @keyframes slideUp {
        from {
            transform: translateY(40px);
            opacity: 0;
        }
        to {
            transform: translateY(0);
            opacity: 1;
        }
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
</style>
</head>
<body>
    <div class="login-box">
        <h2><i class="fas fa-user-shield"></i> Admin Login</h2>
        <form action="AdminLoginPage" method="POST">
            <div class="form-group">
                <input type="text" name="email" placeholder="Enter email" required>
            </div>
            <div class="form-group">
                <input type="password" name="password" placeholder="Enter password" required>
            </div>
            <input type="submit" class="submit-btn" value="Login">
        </form>
    </div>
</body>
</html>
