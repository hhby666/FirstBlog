<%--
  Created by IntelliJ IDEA.
  User: qyh
  Date: 2021/9/8
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <script>
        $(function (){
            $("#subBtn").click(function (){
                // 此时data为js对象 使用JSON.stringify(data)变为json对象
                const data = {
                    "id": ${id},
                    "author": $("input[name='author']").val(),
                    "type": Number($("select[name='type']").val()),
                    "content": ue.getContent(),
                    "title": $("input[name='title']").val()
                };
                $.ajax({
                    url:"${pageContext.request.contextPath}/updateArticle",
                    type: "POST",
                    data: JSON.stringify(data),
                    contentType: "application/json;charset=utf-8",
                    dataType: "text",
                    success: function (mess){
                        alert(mess);
                    },
                    error: function (){
                        alert("点击按钮提交后会有两个article传入后台，第一个article属性全为null，第二个正常，暂未解决！！");
                    }
                });
            });
        });
    </script>
</head>
<body>

    <form class="form-inline" id="articleAttr" action="" method="post">
        <div class="form-group" style="margin-left: 15%;margin-top: 2%">
            <label for="author">作者:</label>
            <input type="text" class="form-control" id="author" name="author" style="width: 100px">
        </div>
<%--        <div class="form-group" style="margin-left: 15%;margin-top: 2%">--%>
<%--            <label for="exampleInputEmail2">分类:</label>--%>
<%--            <input type="text" class="form-control" id="exampleInputEmail2" placeholder="java">--%>
<%--        </div>--%>
        <div class="form-group" style="margin-left: 5%;margin-top: 2%">
            <label for="type">类型:</label>
            <select class="form-control" id="type" name="type">
                <%-- value前加：，表示为数值类型。。。。失败--%>
                <option disabled selected>---请选择---</option>
                <option value="1">java</option>
                <option value="2">python</option>
                <option value="3">web</option>
                <option value="4">linux</option>
                <option value="5">可视化</option>
                <option value="6">工具</option>
                <option value="7">创意</option>
            </select>
        </div>
        <div class="form-group" style="margin-left: 5%;margin-top: 2%">
            <label for="title">标题:</label>
            <input type="text" class="form-control" id="title" name="title" style="width: 348px">
        </div>
        <%--type写的话默认是submmit，点击就会表单提交，会打断ajax提交数据--%>
        <button type="button" class="btn btn-default form-control" id="subBtn" style="margin-top: 2%;margin-left: 5%">提交</button>
        <div id="editorDiv" style="height: 70%;width: 70%;margin-left: 15%;margin-top: 2%;">
            <!-- 加载编辑器的容器 -->
            <script id="container" name="content" type="text/plain">

            </script>
        </div>
    </form>

    <!-- 配置文件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>

    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.all.js"></script>

    <!-- 实例化编辑器 -->
    <script type="text/javascript">
        var ue = UE.getEditor('container', {initialFrameHeight:"100%", initialFrameWidth:"100%", autoHeightEnabled: false});
        //富文本编辑器加载完成后再进修ajax传数据
        ue.ready(function (){
            $.ajax({
                url:"${pageContext.request.contextPath}/update",
                type: "POST",
                //此处的${id}是从controller层/toUpdate传来
                data: {"id": ${id}},
                // contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data1){
                    $("#author").val(data1.author);
                    $("#type").val(String(data1.type));
                    ue.setContent(data1.content);
                    $("#title").val(data1.title);
                },
                error: function (){
                    alert("error");
                }
            });
        });
    </script>
</body>
</html>
