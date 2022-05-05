<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            position: fixed;
            top: 0px;
            left: 0px;
            height: 100%;
            width: 100%;

        }
    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/addbook" method="post">
        <div class="form-group">
            <label >书名：</label>
            <input type="text" name="bookName" class="form-control" required>
        </div>
        <div class="form-group">
            <label >ISBN：</label>
            <input type="text" name="ISBN" class="form-control" required>
        </div>
        <div class="form-group">
            <label >作者：</label>
            <input type="text" name="author" class="form-control" required>
        </div>
        <div class="form-group">
            <label >出版社/出版商：</label>
            <input type="text" name="publisher" class="form-control" required>
        </div>
        <div class="form-group">
        <input type="submit" class="form-control" value="提交">
        </div>

    </form>
</div>
</body>
</html>
