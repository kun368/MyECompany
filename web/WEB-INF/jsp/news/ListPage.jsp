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
    <title>新闻中心 - MyECompany</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>
<%@ include file="CommonTopBar.jsp"%>

<div class="am-container">
    <ol class="am-breadcrumb">
        <li><a href="${url_index}">首页</a></li>
        <li class="am-active">新闻列表</li>
    </ol>

    <table class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
        <tr>
            <th>发布时间</th>
            <th>标题</th>
        </tr>
        <c:forEach items="${curpage.list}" var="news">
            <tr>
                <td><fmt:formatDate value="${news.addtime}" type="date" pattern="yyyy年MM月dd日"/></td>
                <td><a href="<c:url value="/news/detail/${news.id}"/>" class="am-text-truncate">${news.title}</a></td>
            </tr>
        </c:forEach>
    </table>

    <ul class="am-pagination am-pagination-right">
        <c:if test="${curpage.firstPage}"><li class="am-disabled"><a href="${url_news}">&laquo;</a></li></c:if>
        <c:if test="${!curpage.firstPage}"><li><a href="${url_news}">&laquo;</a></li></c:if>

        <c:forEach begin="1" end="${curpage.pageSum}" var="pageid">
            <c:if test="${pageid == curpage.pageIndex+1}">
                <li class="am-active"><a href="#">${pageid}</a></li>
            </c:if>
            <c:if test="${pageid != curpage.pageIndex+1}">
                <c:url value="/news/list/page/${pageid}" var="pagelink"/>
                <li><a href="${pagelink}">${pageid}</a></li>
            </c:if>
        </c:forEach>

        <c:url value="/news/list/page/${curpage.pageSum}" var="lastpageurl"/>
        <c:if test="${curpage.lastPage}"><li class="am-disabled"><a href="${lastpageurl}">&raquo;</a></li></c:if>
        <c:if test="${!curpage.lastPage}"><li><a href="${lastpageurl}">&raquo;</a></li></c:if>
    </ul>

</div>
<%@ include file="../CommonFooter.jsp"%>

</body>
</html>
