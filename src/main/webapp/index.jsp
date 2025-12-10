<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deployed using Jenkins</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #6a5acd, #7f5af0);
            font-family: Arial, sans-serif;
        }

        .card {
            background: #fff;
            padding: 40px 60px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0px 10px 30px rgba(0,0,0,0.15);
        }

        .title {
            font-size: 28px;
            font-weight: bold;
            color: #4f46e5;
            margin-bottom: 10px;
        }

        .check {
            color: #22c55e;
            font-size: 26px;
            margin-right: 10px;
        }

        .btn {
            background: #22c55e;
            color: #fff;
            padding: 10px 20px;
            margin: 20px 0;
            display: inline-block;
            border-radius: 20px;
            font-weight: bold;
            text-decoration: none;
        }

        .footer {
            font-size: 14px;
            margin-top: 10px;
            color: #777;
        }
    </style>

</head>
<body>

<div class="card">
    <div class="title">
        <span class="check">✔</span>
        Deployed using Jenkins
    </div>

    <p>Hello from Apache Tomcat 🚀</p>

    <a class="btn">CI/CD Successful</a>

    <div class="footer">
        Jenkins → Maven → Tomcat
    </div>
</div>

</body>
</html>
