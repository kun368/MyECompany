<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>联系我们 - MyECompany</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>
<%@ include file="CommonTopBar.jsp"%>

<div class="am-container">
    <ol class="am-breadcrumb">
        <li><a href="${url_index}">首页</a></li>
        <li class="am-active">联系我们</li>
    </ol>

    <div>
        <h1>联系我们-留言板</h1>
        <h3>您的建议都是公开的，您可以使用QQ、微博、微信等账号留言。</h3>
        <h3>也可以通过如下方式联系我们：</h3>
        <h3>Email：myecomplany@163.com</h3>
        <h3>地址：山东省青岛市山东科技大学</h3>
    </div>

    <!-- 多说评论框 start -->
    <div class="ds-thread" data-thread-key="0" data-title="联系我们-留言" data-url="<%=request.getRequestURL()%>"></div>
    <!-- 多说评论框 end -->
    <!-- 多说公共JS代码 start (一个网页只需插入一次) -->
    <script type="text/javascript">
        var duoshuoQuery = {short_name:"myecompany"};
        (function() {
            var ds = document.createElement('script');
            ds.type = 'text/javascript';ds.async = true;
            ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
            ds.charset = 'UTF-8';
            (document.getElementsByTagName('head')[0]
            || document.getElementsByTagName('body')[0]).appendChild(ds);
        })();
    </script>
    <!-- 多说公共JS代码 end -->
</div>
<%@ include file="../CommonFooter.jsp"%>

</body>
</html>
