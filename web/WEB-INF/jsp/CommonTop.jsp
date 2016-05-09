<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:url value="/" var="url_index"/>
<c:url value="/assets/js/amazeui.min.js" var="url_js"/>
<c:url value="/assets/css/amazeui.min.css" var="url_css"/>


<link rel="stylesheet" type="text/css" href="${url_css}">
<script src="${url_js}"></script>

<a href="${url_index}">公司首页</a>
<a href="${url_index}">关于我们</a>
<a href="${url_index}">新闻中心</a>
<a href="${url_index}">产品大全</a>
<a href="${url_index}">联系我们</a>
<a href="${url_index}">用户中心</a>