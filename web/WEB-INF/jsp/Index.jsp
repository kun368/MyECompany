<%--
  Created by IntelliJ IDEA.
  User: kun
  Date: 2016/5/8
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页 - MyECompany</title>
    <%@ include file="CommonTop.jsp"%>
</head>
<body>
<%@ include file="CommonTopBar.jsp"%>

<div class="am-container">
    <h1>欢迎来到MyECompay创业网站！</h1>

    <div class="am-slider am-slider-default" data-am-flexslider id="demo-slider-0">
        <ul class="am-slides">
            <li><img src="http://s.amazeui.org/media/i/demos/bing-1.jpg"></li>
            <li><img src="http://s.amazeui.org/media/i/demos/bing-2.jpg"></li>
            <li><img src="http://s.amazeui.org/media/i/demos/bing-3.jpg"></li>
            <li><img src="http://s.amazeui.org/media/i/demos/bing-4.jpg"></li>
        </ul>
    </div>
    <h3>网站计数：<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1259130746'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1259130746%26online%3D1%26show%3Dline' type='text/javascript'%3E%3C/script%3E"));</script>
    </h3>
</div>
<%@ include file="CommonFooter.jsp"%>

</body>
</html>
