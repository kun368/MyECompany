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
    <title>添加新闻 - MyECompany</title>
    <%@ include file="../CommonTop.jsp"%>
</head>
<body>
<%@ include file="CommonTopBar.jsp"%>

<div class="am-container">
    <ol class="am-breadcrumb">
        <li><a href="${url_index}">首页</a></li>
        <li><a href="${url_news}">新闻</a></li>
        <li class="am-active">添加新闻</li>
    </ol>
    <c:url value="/news/save" var="url_save_news"/>
    <form:form commandName="news" action="${url_save_news}" method="post" cssClass="am-form">
        <div class="am-form-group">
            <label for="title" class="am-form-label">新闻标题</label>
            <form:errors path="title" cssClass="am-text-warning"/><br/>
            <form:input id="title" path="title" cssClass="am-form-field"/>
        </div>
        <div class="am-form-group">
            <label for="content" class="am-form-label">新闻内容</label>
            <form:errors path="content" cssClass="am-text-warning"/><br/>
            <form:textarea path="content" rows="20" id="content" cssClass="am-form-field"/>
        </div>
        <p>
            <button type="submit" class="am-btn am-btn-primary am-radius am-align-right">提交</button>
            <button type="reset" class="am-btn am-btn-secondary am-radius am-align-right">重置</button>
        </p>
    </form:form>
</div>
<%@ include file="../CommonFooter.jsp"%>

</body>
</html>
