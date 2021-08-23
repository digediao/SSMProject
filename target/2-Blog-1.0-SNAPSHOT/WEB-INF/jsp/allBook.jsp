<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Blog.domain.Books" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1><small>书籍列表————显示所有书籍</small></h1>
                <h2><a href="${pageContext.request.contextPath}/book/Exception">丢出错误</a></h2>
                <h3 style="color: red">${exception.message}</h3>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <%--添加书籍--%>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
        </div>
        <div class="col-md-8 column">
            <%--查询书籍--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/book/queryBookName" method="post" style="float:right;">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" class="form-control" placeholder="请输入要查询的书籍名称" name="queryBookName">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <td>书籍编号</td>
                    <td>书籍名称</td>
                    <td>书籍数量</td>
                    <td>书籍详情</td>
                    <td>操作</td>
                </tr>
                </thead>
                <%--遍历书籍--%>
                <tbody>
                <c:forEach items="${list}" var="book">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdate?id=${book.bookID}">修改</a>
                            &nbsp;|&nbsp;
                            <a href="${pageContext.request.contextPath}/book/delete?id=${book.bookID}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>
