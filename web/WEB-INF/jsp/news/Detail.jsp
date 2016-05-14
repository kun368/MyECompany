<%--
  Created by IntelliJ IDEA.
  User: kun
  Date: 2016/5/10
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻详情 - MyECompany</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>

<div class="am-container">

    <ol class="am-breadcrumb">
        <li><a href="${url_index}">首页</a></li>
        <li><a href="${url_news}">新闻</a></li>
        <li class="am-active">新闻详情</li>
    </ol>

    <h1>${news.title}</h1>
    <h3>新闻时间：${news.addtime}</h3>
    <p>
        <%request.setAttribute("vEnter", "\n");%>
        ${fn:replace(news.content, vEnter, "<br/><br/>")}
    </p>

    <hr/>

    <!-- 多说评论框 start -->
    <div class="ds-thread" data-thread-key="${news.id}" data-title="${news.title}" data-url="<%=request.getRequestURL()%>"></div>
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
