<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>所有书籍</title>
<%--    <link rel="stylesheet" media="screen" href="css/lizi.css">--%>
    <style>
        body {
            position: fixed;
            top: 0px;
            left: 0px;
            height: 100%;
            width: 100%;
            background: cornflowerblue;
            background: radial-gradient( at bottom, #00738c, #81b0b2,#dae6d4);

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
</head>
<body>
<div id="particles-js">
    <canvas class="particles-js-canvas-el"></canvas>


    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>书籍列表————所有书籍</small>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/toaddbook">添加书籍</a>
                </div>
                <div class="col-md-4 column"></div>
                <div class="col-md-4 column">
                    <form action="${pageContext.request.contextPath}/selectbook" method="post" class="form-inline" role="search" >
                        <div class="form-group">
                            <input type="text" name="str" class="form-control" placeholder="搜索书名" required/>
                        </div> <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
              <table class="table table-hover "><%--  table-striped--%>
                    <thead>
                        <tr>
                            <th>ISBN</th>
                            <th>书籍名称</th>
                            <th>作者</th>
                            <th>出版社</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.ISBN}</td>
                                <td>${book.bookName}</td>
                                <td>${book.author}</td>
                                <td>${book.publisher}</td>
                                <td>
                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/toupdatebook/${book.bookId}">修改</a>
                                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/todeletebook/${book.bookId}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<script src="js/lizi.js"></script>
</body>
</html>
