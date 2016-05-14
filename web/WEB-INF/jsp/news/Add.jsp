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
<c:url value="/news/save" var="url_save_news"/>
<form:form commandName="news" action="${url_save_news}" method="post">
    <p>
        <form:errors path="title"/><br/>
        <label for="title">标题</label>
        <form:input id="title" path="title"/>
    </p>
    <p>
        <form:errors path="content"/><br/>
        <label for="content">标题</label>
        <form:textarea path="content" rows="20" id="content"/>
    </p>
    <p>
        <button type="reset">重置</button>
        <button type="submit">提交</button>
    </p>
</form:form>
</body>
</html>
