<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kun
  Date: 2016/5/10
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加新闻</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>

<div class="am-container">
    <ol class="am-breadcrumb">
        <li><a href="${url_index}">首页</a></li>
        <li><a href="${url_news}">新闻</a></li>
        <li class="am-active">添加新闻</li>
    </ol>
    <c:url value="/news/save" var="url_save_news"/>
    <form:form commandName="news" action="${url_save_news}" method="post" cssClass="am-form">
        <div class="am-form-group">
            <form:errors path="title"/><br/>
            <label for="title">标题</label>
            <form:input id="title" path="title"/>
        </div>
        <div class="am-form-group">
            <form:errors path="content"/><br/>
            <label for="content">标题</label>
            <form:textarea path="content" rows="20" id="content"/>
        </div>
        <p><button type="reset" class="am-btn am-btn-default">重置</button></p>
        <p><button type="submit" class="am-btn am-btn-default">提交</button></p>
    </form:form>
</div>
<%@ include file="../CommonFooter.jsp"%>

</body>
</html>
