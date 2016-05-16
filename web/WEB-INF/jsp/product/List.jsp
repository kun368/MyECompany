<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: kun
  Date: 2016/5/14
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品大全 - MyECompany</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>
<%@ include file="CommonTopBar.jsp"%>

<div class="am-container">

    <ol class="am-breadcrumb">
        <li><a href="${url_index}">首页</a></li>
        <li class="am-active">产品列表</li>
    </ol>

    <div class="am-g">
        <c:forEach items="${products}" var="product" varStatus="status">
            <c:if test="${status.index % 3 == 0}">
                <div class="am-u-sm-12"></div>
            </c:if>
            <c:url value="/product/detail/${product.id}" var="url_cur"/>
            <div class="am-u-sm-4 am-u-end">
                <div class="am-thumbnail">
                    <img src="${product.imagemain.get(0)}" alt=""/>
                    <div class="am-thumbnail-caption">
                        <div class="am-g">
                            <div class="am-u-sm-8"><h3 class="am-text-truncate"><a href="${url_cur}">${product.name}</a></h3></div>
                            <div class="am-u-sm-4 am-text-danger"><h3 class="am-align-right">￥${product.price}</h3></div>
                            <div class="am-u-sm-12"><h6 class="am-text-truncate am-text-sm">${product.activity}</h6></div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<%@ include file="../CommonFooter.jsp"%>
</body>
</html>
