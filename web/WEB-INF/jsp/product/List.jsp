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
    <title>产品大全</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>

<h1>所有产品</h1>

<table class="am-table am-table-bordered am-table-radius am-table-striped">
    <tr>
        <th>产品名称</th>
        <th>价格</th>
        <th>活动</th>
        <th>商品产地</th>
        <th>上架日期</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td><a href="<c:url value="/product/detail/${product.id}"/>">${product.name}</a></td>
            <td>${product.price}</td>
            <td>${product.activity}</td>
            <td>${product.address}</td>
            <td><fmt:formatDate value="${product.addtime}" type="date" pattern="yyyy年MM月dd日"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
