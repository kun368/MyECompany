<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品详情 - ${product.name} - MyECompany</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>
<%@ include file="CommonTopBar.jsp"%>

<div class="am-container">
    <ol class="am-breadcrumb">
        <li><a href="${url_index}">首页</a></li>
        <li><a href="${url_product_list}">产品列表</a></li>
        <li class="am-active">产品详情</li>
    </ol>

    <h1>${product.name}</h1>

    <div class="am-g">
        <div class="am-u-sm-3">
            <div data-am-widget="slider" class="am-slider am-slider-b2" data-am-slider='{&quot;controlNav&quot;:false}'  id="demo-slider-0">
                <ul class="am-slides">
                    <c:forEach items="${product.imagemain}" var="image">
                        <li><img src="${image}"></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="am-u-sm-9">
            <ul class="am-list am-list-static am-list-border">
                <li><i class="am-icon-rmb am-icon-fw"></i>产品价格：${product.price}</li>
                <li><i class="am-icon-bullhorn am-icon-fw"></i>当前活动：${product.activity}</li>
                <li><i class="am-icon-star am-icon-fw"></i>上架时间：${product.addtime}</li>
                <li><i class="am-icon-check-square am-icon-fw"></i>商品产地：${product.address}</li>
            </ul>
        </div>
    </div>

    <%--下面为商品详情--%>
    <hr data-am-widget="divider" style="" class="am-divider am-divider-dashed" />
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
