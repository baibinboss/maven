<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2016/8/29
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>欢迎登陆</title>
    <%@include file="/static/public/jsp/taglibs.jsp"%>
    <link rel="stylesheet" type="text/css" href="static/base/login/css/style.css" />
    <script src="static/public/js/jquery-latest.min.js"></script>
    <script src="static/public/js/modernizr-1.7.js"></script>
    <script type="text/javascript" src="static/base/login/js/placeholder.js"></script>
</head>

<body>
${param.msg}
<form id="slick-login" action="/login/validate" method="POST">
    <c:if test="${code eq '500'}">
        ${msg}
    </c:if>
    <label>用户名</label><input type="text" name="userName" class="placeholder" placeholder="请输入email">
    <label>密码</label><input type="password" name="passWord" class="placeholder" placeholder="******">
    <input type="submit" value="登陆" />
</form>
</body>
</html>
