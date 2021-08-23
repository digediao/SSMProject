<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/8/21
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍数据</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="page-header">
            <h1>
                <small>修改书籍</small>
            </h1>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/update?bookID=${books.bookID}" method="post">
        <div class="form-group">
            <label for="bkname1">书籍名称</label>
            <input type="text" name="bookName" class="form-control" id="bkname1" value="${books.bookName}" required>
        </div>
        <div c  lass="form-group">
            <label for="bkname2">书籍数量</label>
            <input type="text" name="bookCounts" class="form-control" id="bkname2" value="${books.bookCounts}" required>
        </div>
        <div class="form-group">
            <label for="bkname3">书籍描述</label>
            <input type="text" name="detail" class="form-control" id="bkname3" value="${books.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>

</div>

</body>
</html>
