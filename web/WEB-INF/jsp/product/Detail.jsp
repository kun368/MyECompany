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
    <title>产品详情 - ${product.name}</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>

<h1>${product.name}</h1>
<h3>价格：${product.price}元</h3>
<h3>活动：${product.activity}</h3>
<h3>上架时间：${product.addtime}</h3>
<h3>商品产地：${product.address}</h3>

<c:forEach items="${product.imageurl}" var="image">
    <img src="${image}" class="am-img-responsive" alt="图片"/>
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

</body>
</html>
