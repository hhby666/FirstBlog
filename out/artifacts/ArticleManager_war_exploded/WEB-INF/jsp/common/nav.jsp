<%--
  Created by IntelliJ IDEA.
  User: qyh
  Date: 2021/9/6
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/nav.css">
<%--    <script type="text/javascript" src="./js/nav.js">--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/nav.js">
    </script>
</head>
<body>
    <div id="sideBarDiv">
        <ul class="nav nav-pills nav-stacked sideBar">
            </br>
            <li role="presentation">
                <a href="#docCollapse" class="nav-header collapsed" data-toggle="collapse" id="collapseParent" onclick="chevron_toggle()">文章分类<span class="pull-right glyphicon glyphicon-chevron-down"></span></a>
                <ul class="nav nav-pills nav-stacked sideBar" id="docCollapse">
                    </br>
                    <li role="presentation" class="bar" value="1"><a style="cursor:pointer;">java</a></li>
                    </br>
                    <li role="presentation" class="bar" value="2"><a style="cursor:pointer;">python</a></li>
                    </br>
                    <li role="presentation" class="bar" value="3"><a style="cursor:pointer;">web</a></li>
                    </br>
                    <li role="presentation" class="bar" value="4"><a style="cursor:pointer;">linux</a></li>
                    </br>
                    <li role="presentation" class="bar" value="5"><a style="cursor:pointer;">可视化</a></li>
                    </br>
                    <li role="presentation" class="bar" value="6"><a style="cursor:pointer;">工具</a></li>
                    </br>
                    <li role="presentation" class="bar" value="7"><a style="cursor:pointer;">创意</a></li>
                    </br>
                </ul>
            </li>
            </br>
            <li role="presentation" id="allArticle"><a style="cursor:pointer;">全部文章</a></li>
        </ul>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</body>
</html>