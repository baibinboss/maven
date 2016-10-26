<%--
  Created by IntelliJ IDEA.
  User: ibm
  Date: 2016/8/29
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+request.getContextPath();
%>
<base href="<%=basePath%>"/>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="static/template/css/bootstrap.min.css" rel="stylesheet">
<link href="static/template/css/bootstrap-responsive.min.css" rel="stylesheet">

<link href="static/template/css/font-awesome.css" rel="stylesheet">
<link href="static/template/css/style.css" rel="stylesheet">
<link href="static/template/css/pages/dashboard.css" rel="stylesheet">
<link href="static/plugins/bootstrap/css/bootstrap-dialog.min.css" rel="stylesheet"/>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<%--
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>--%>
