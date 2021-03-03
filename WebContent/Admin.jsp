<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
   <style>
        body {
            margin: 0px;
            padding: 0px;
            background: url("2.jpg") no-repeat center;
            background-size: cover;
            background-attachment: fixed;
        }

        .box {
            border: 5px solid black;
            border-radius: 20px;
            width: 300px;
            padding: 50px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            transition: all 4s ease-in-out;
        }

        .box h1 {
            color: black;
            text-decoration: underline;
            font-weight: 500;
        }

        .check {
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid #3498db;
            padding: 8px 17px;
            width: 200px;
            outline: none;
            color: black;
            font-size: large;
            font-weight: 500;
            border-radius: 24px;
            transition: 0.25s;
        }

        .check:focus {
            width: 280px;
            border-color: #2ecc71;
        }

        .check1 {
            border: 0;
            background: none;
            margin: 0px auto;
            text-align: center;
            border: 2px solid #2ecc71;
            padding: 8px 40px;
            outline: none;
            color: black;
            font-size: large;
            font-weight: 500;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }

        .check1:hover {
            background: #2ecc71;
        }
    </style>
</head>
<body>
   <form class="box" action="AdminLogin">
        <h1>Admin LOGIN</h1>
        <input class="check" type="text" name="username" placeholder="USERNAME">
        <input class="check" type="password" name="password" placeholder="PASSWORD">
        <input class="check1" type="submit" name="" placeholder="Login" value="Login">
        <br>
        <br>
        <a href="login.html" target="blank"><u>Admin Login</u></a>
    </form>
</body>
</html>