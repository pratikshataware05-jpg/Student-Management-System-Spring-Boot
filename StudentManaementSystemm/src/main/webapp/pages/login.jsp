<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>
    body {
        margin: 0;
        height: 100vh;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #667eea, #764ba2);
        display: flex;
        justify-content: center;
        align-items: center;
        background-image: url("images/admin.jpg");
    }

    .login-box {
        background: white;
        padding: 35px;
        width: 360px;
        border-radius: 12px;
        box-shadow: 0 15px 30px rgba(0,0,0,0.3);
        animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(15px); }
        to { opacity: 1; transform: translateY(0); }
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    input {
        width: 100%;
        padding: 12px;
        margin: 12px 0;
        border-radius: 8px;
        border: 1px solid #ccc;
        font-size: 15px;
    }

    input:focus {
        border-color: #667eea;
        outline: none;
        box-shadow: 0 0 5px rgba(102,126,234,0.5);
    }

    button {
        width: 100%;
        padding: 12px;
        background: #667eea;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background 0.3s;
    }

    button:hover {
        background: #5a67d8;
    }

    .error {
        color: red;
        text-align: center;
        margin-top: 10px;
    }

    .footer {
        text-align: center;
        margin-top: 15px;
        font-size: 14px;
    }

    .footer a {
        text-decoration: none;
        color: #667eea;
    }
</style>
</head>

<body>

<div class="login-box">
    <h2>Login</h2>

    <form action="login" method="post">
        <input type="text" name="username" placeholder="Enter Username" required />
        <input type="password" name="password" placeholder="Enter Password" required />
        <button type="submit">Login</button>
    </form>

    <!-- Error message -->
    <div class="error">
        <%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>
    </div>

</div>

</body>
</html>
