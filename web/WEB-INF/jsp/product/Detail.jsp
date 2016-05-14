<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: kun
  Date: 2016/5/14
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品详情 - ${product.name} - MyECompany</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>

<div class="am-container">
    <ol class="am-breadcrumb">
        <li><a href="${url_index}">首页</a></li>
        <li><a href="${url_product_list}">产品</a></li>
        <li class="am-active">产品详情</li>
    </ol>

    <h1>${product.name}</h1>
    <div data-am-widget="tabs" class="am-tabs am-tabs-d2">
        <ul class="am-tabs-nav am-cf">
            <li class="am-active"><a href="[data-tab-panel-0]">产品价格</a></li>
            <li class=""><a href="[data-tab-panel-1]">当前活动</a></li>
            <li class=""><a href="[data-tab-panel-2]">上架时间</a></li>
            <li class=""><a href="[data-tab-panel-3]">商品产地</a></li>
        </ul>
        <div class="am-tabs-bd">
            <div data-tab-panel-0 class="am-tab-panel am-active">人民币${product.price}元</div>
            <div data-tab-panel-1 class="am-tab-panel ">${product.activity}</div>
            <div data-tab-panel-2 class="am-tab-panel ">${product.addtime}</div>
            <div data-tab-panel-3 class="am-tab-panel ">${product.address}</div>
        </div>
    </div>

    <c:forEach items="${product.imageurl}" var="image">
        <img src="${image}" class="am-img-responsive am-center" alt="图片"/>
    </c:forEach>
    <p>
        <%request.setAttribute("vEnter", "\n");%>
        ${fn:replace(product.intro, vEnter, "<br/><br/>")}
    </p>


    <h2>商品评论</h2>
    <!-- 多说评论框 start -->
    <div class="ds-thread" data-thread-key="${102400 + product.id}" data-title="商品:${product.name}" data-url="<%=request.getRequestURL()%>"></div>
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
