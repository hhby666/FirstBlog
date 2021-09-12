<%--
  Created by IntelliJ IDEA.
  User: qyh
  Date: 2021/9/6
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="common/head.jsp"%>--%>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="../../css/content.css">
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <script>
        $.ajax({

        })
    </script>
</head>
<body>
<%--<%@include file="common/nav.jsp"%>--%>
<%--为什么在controller层直接跳转到detail.jsp时，detail.jsp中的内容直接会在iframe中显示，而不是另外跳转到单独页面呢--%>
    <div class="container">
        <div id="info">
            <h3><small>作者: ${author}</small></h3>
            <h3><small>类型: ${type}</small></h3>
            <h3><small>时间: ${time}</small></h3>
        </div>
        <br>
        <div id="text">
            ${content}
        </div>
    </div>
</body>
</html>
