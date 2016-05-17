<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:url value="/" var="url_index"/>
<c:url value="/news/list/page/1" var="url_news"/>
<c:url value="/contactus" var="url_contactus"/>
<c:url value="/product/list" var="url_product_list"/>
<c:url value="/about" var="url_aboutus"/>

<c:url value="/assets/js/jquery.min.js" var="url_jquery"/>
<c:url value="/assets/js/jquery.flexslider-min.js" var="url_flexslider"/>
<c:url value="/assets/js/amazeui.min.js" var="url_js"/>
<c:url value="/assets/css/amazeui.min.css" var="url_css"/>


<link rel="stylesheet" type="text/css" href="${url_css}">
<script src="${url_jquery}"></script>
<script src="${url_flexslider}"></script>
<script src="${url_js}"></script>
