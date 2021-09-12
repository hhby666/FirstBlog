<%--
  Created by IntelliJ IDEA.
  User: qyh
  Date: 2021/9/6
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/jsp/common/head.jsp"%>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="css/content.css">
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
    </script>
    <script type="text/javascript">
        function preview(data){
          <%--let htmlString =--%>
          <%--        '<div class="preview" style="width: 70%; height: 100px; background-color: #E0F4F1; border-radius: 25px;padding-left: 20px;margin-left: 10%">' +--%>
          <%--        '<a href="${pageContext.request.contextPath}/toDetail?id=' +--%>
          <%--          data.id+--%>
          <%--          '">'+--%>
          <%--        '<h2 class="con">' +--%>
          <%--            data.content +--%>
          <%--          '</h2>' +--%>
          <%--          '</a>' +--%>
          <%--        '</div>';--%>
          let htmlString =
                  '<div class="preview" style="width: 70%; height: 100px; background-color: #E0F4F1; border-radius: 25px;padding-left: 20px;margin-left: 10%;margin-bottom: 4%;">' +
                    '<div class="article" style="width: 90%;float: left">' +
                      '<a href="/toDetail?id='+ data.id +'"><h2 class="con">' + data.content + '</h2></a>' +
                     '</div>' +
                     '<div class="opra" style="width: 10%;float: right;margin-top: 7%;background-color: white;border-radius: 20px">' +
                        '<a href="/toUpdate?id='+ data.id +'" style="padding-left: 13px;padding-right: 2px">修改</a>' +
                        //删除页面 直接在controler层删掉数据，再重定向请求：redirect:/selectByType
                        '<a href="/delete?id='+ data.id +'" style="padding-left: 3px;padding-right: 10px">删除</a>' +
                     '</div>' +
                  '</div>';
          return htmlString;
        };
        $(function (){
          $(".bar").click(function (){
            $.ajax({
              url:"${pageContext.request.contextPath}/selectByType",
              type:"post",
              data:{
                type: $(this).text()
              },
              dataType: "json",   //声明返回数据为json后，自动解析
              success: function (data){
                // alert(data);
                console.log(data);
                // $('#contentFrame').contents().find('body').html("<h1>"+data[0].content+"</h1>");
                // alert(data[0].content);
                //每次点击前先清空iframe中内容，再添加
                $('#contentFrame').contents().find('body').html("");
                for (let i = 0; i < data.length; i++) {
                  $('#contentFrame').contents().find('body').append(preview(data[i]));
                }
              },
              error: function (){
                alert("error");
              }
            });
          });
          $("#allArticle").click(function (){
            $.ajax({
              url:"${pageContext.request.contextPath}/allArticle",
              type:"post",
              data:{},
              dataType: "json",   //声明返回数据为json后，自动解析
              success: function (data){
                // alert(data);
                console.log(data);
                //每次点击前先清空iframe中内容，再添加
                $('#contentFrame').contents().find('body').html("");
                for (let i = 0; i < data.length; i++) {
                  $('#contentFrame').contents().find('body').append(preview(data[i]));
                }
              },
              error: function (){
                alert("error");
              }
            })
          })
        });
    </script>
  </head>
  <body>
    <%@include file="WEB-INF/jsp/common/nav.jsp"%>
    <div id="content">
      <iframe height="100%" width="100%" id="contentFrame" style="background-color: white">

      </iframe>
    </div>
  </body>
</html>
