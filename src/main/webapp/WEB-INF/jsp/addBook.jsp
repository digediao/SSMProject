<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>增加书籍</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

    <div class="container">
        <div class="row clearfix">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/addBook" method="post">
            <div class="form-group">
                <label for="bkname1">书籍名称</label>
                <input type="text" name="bookName" class="form-control" id="bkname1" required>
            </div>
            <div class="form-group">
                <label for="bkname2">书籍数量</label>
                <input type="text" name="bookCounts" class="form-control" id="bkname2" required>
            </div>
            <div class="form-group">
                <label for="bkname3">书籍描述</label>
                <input type="text" name="detail" class="form-control" id="bkname3" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="添加">
            </div>
        </form>

    </div>

</body>
</html>
