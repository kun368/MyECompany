<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: kun
  Date: 2016/5/10
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻中心</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>

<a href="<c:url value="/news/add"/>">添加新闻</a>

<table class="am-table am-table-bordered am-table-radius am-table-striped">
    <tr>
        <th>发布时间</th>
        <th>标题</th>
    </tr>
    <c:forEach items="${newslist}" var="news">
        <tr>
            <td><fmt:formatDate value="${news.addtime}" type="date" pattern="yyyy年MM月dd日"/></td>
            <td><a href="<c:url value="/news/detail/${news.id}"/>">${news.title}</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
