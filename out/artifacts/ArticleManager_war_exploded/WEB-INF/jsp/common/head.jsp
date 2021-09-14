<%--
  Created by IntelliJ IDEA.
  User: qyh
  Date: 2021/9/6
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<%--    <link rel="stylesheet" type="text/css" href="./css/head.css">--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/head.css">
</head>
<body>
<nav class="navbar navbar-default headBar" style="margin-bottom: 0px" role="navigation">
    <div class="container-fluid" id="headBarDiv">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">ArticleManager</a>
        </div>
        <div>
            <ul class="nav navbar-nav float-right">
                <li><a href="${pageContext.request.contextPath}/toAddArticle">添加文章</a></li>
                <li><a href="#">用户中心</a></li>
<%--                <li class="dropdown">--%>
<%--                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
<%--                        Java--%>
<%--                        <b class="caret"></b>--%>
<%--                    </a>--%>
<%--                    <ul class="dropdown-menu">--%>
<%--                        <li><a href="#">jmeter</a></li>--%>
<%--                        <li><a href="#">EJB</a></li>--%>
<%--                        <li><a href="#">Jasper Report</a></li>--%>
<%--                        <li class="divider"></li>--%>
<%--                        <li><a href="#">分离的链接</a></li>--%>
<%--                        <li class="divider"></li>--%>
<%--                        <li><a href="#">另一个分离的链接</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>
