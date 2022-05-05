<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="utf-8" />
  <title>主页</title>
  <!-- 新 Bootstrap 核心 CSS 文件 -->

  <style>
    body{
      margin: 0;
      padding: 0;
      background-image: url("img/Miku.jpg");
    }
    .box{
      border-radius: 15px;
      left:50%;
      top:50%;
      transform: translate(-50%,-50%);
      position: absolute;
    }
    a{
      text-decoration: none;
      color:white;
      font-size: 38px;
      text-align: center;
    }
    #particles-js {
      background-size: cover;
      background-position: 50% 50%;
      background-repeat: no-repeat;
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      left: 0;
    }
  </style>
<%--  <link rel="stylesheet" media="screen" href="css/lizi.css">--%>
</head>

<body>

<div id="particles-js">
  <canvas class="particles-js-canvas-el"></canvas>
  <div class="box">
      <a href="${pageContext.request.contextPath}/allbook">进入图书馆</a>
  </div>

</div>
<script src="js/lizi.js"></script>
</body>

</html>
