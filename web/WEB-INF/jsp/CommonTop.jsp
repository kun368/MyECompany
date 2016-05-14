<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:url value="/" var="url_index"/>
<c:url value="/news/list" var="url_news"/>
<c:url value="/contactus" var="url_contactus"/>
<c:url value="/product/list" var="url_product_list"/>
<c:url value="/about" var="url_aboutus"/>

<c:url value="/assets/js/amazeui.min.js" var="url_js"/>
<c:url value="/assets/css/amazeui.min.css" var="url_css"/>


<link rel="stylesheet" type="text/css" href="${url_css}">
<script src="${url_js}"></script>

<header class="am-topbar am-topbar-inverse">
    <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav am-nav-justify">
            <li><a href="${url_index}">公司首页</a></li>
            <li><a href="${url_aboutus}">关于我们</a></li>
            <li><a href="${url_news}">新闻中心</a></li>
            <li><a href="${url_product_list}">产品大全</a></li>
            <li><a href="${url_contactus}">联系我们</a></li>
        </ul>
    </div>
</header>

