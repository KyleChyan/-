<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/updatebook" method="post">
        <input type="hidden" name="bookId" value="${SIDbooks.bookId}">
        <div class="form-group">
            <label >书名：</label>
            <input type="text" name="bookName" value="${SIDbooks.bookName}" class="form-control" required>
        </div>
        <div class="form-group">
            <label >ISBN：</label>
            <input type="text" name="ISBN" value="${SIDbooks.ISBN}" class="form-control" required>
        </div>
        <div class="form-group">
            <label>作者：</label>
            <input type="text" name="author" value="${SIDbooks.author}" class="form-control" required>
        </div>
        <div class="form-group">
            <label >出版社/出版商：</label>
            <input type="text" name="publisher" value="${SIDbooks.publisher}" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="提交">
        </div>

    </form>
</div>
</body>
</html>
