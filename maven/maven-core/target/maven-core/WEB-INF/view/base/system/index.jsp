<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<title>操作台</title>
<%@include file="/static/public/jsp/taglibs.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>

<link href="static/template/css/bootstrap-responsive.min.css" rel="stylesheet"/>

<link href="static/template/css/font-awesome.css" rel="stylesheet"/>
<link href="static/template/css/style.css" rel="stylesheet"/>
<link href="static/public/css/index.css" rel="stylesheet"/>
<%--<link href="static/template/css/pages/dashboard.css" rel="stylesheet">--%>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>
<div class="main">
    <div class="main-inner">
        <div class="container">
            <div class="row">
                <div class="col-md-12 column">
                    <div class="tabbable" id="tabs-9747" style="background: #FFFFFF">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#panel-36066" data-toggle="tab">CPU 信息</a>
                            </li>
                            <li>
                                <a href="#panel-89439" data-toggle="tab">内存信息</a>
                            </li>
                        </ul>
                        <div class="tab-content" style="padding: 10px;">
                            <div class="tab-pane active" id="panel-36066">
                                <div class="plan-container">
                                    <div class="plan">
                                        <div class="plan-header">
                                            <div class="media well">
                                                <a href="javascript:void(0)" class="pull-left"><img src="static/public/img/cpu.png" class="media-object" alt='' /></a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">
                                                       CPU 信息
                                                    </h4>
                                                    您可以在这里监控服务器CPU的使用情况.
                                                </div>
                                            </div>
                                        </div>
                                        <div class="plan-features">
                                            <ul style="list-style: none;">
                                                <li class="maven-li">
                                                    <div class="row clearfix">
                                                        <div class="col-md-2 column">
                                                            <h5> CPU用户使用率</h5>
                                                        </div>
                                                        <div class="col-md-10 column">
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-success"
                                                                     role="progressbar" aria-valuenow="20"
                                                                     aria-valuemin="0" aria-valuemax="100"
                                                                     style="width:${system.cpuUser}">${system.cpuUser}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="maven-li">
                                                    <div class="row clearfix">
                                                        <div class="col-md-2 column">
                                                            <h5>CPU系统使用率</h5>
                                                        </div>
                                                        <div class="col-md-10 column">
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-success"
                                                                     role="progressbar" aria-valuenow="20"
                                                                     aria-valuemin="0" aria-valuemax="100"
                                                                     style="width:${system.cpuSystem}">${system.cpuSystem}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="maven-li">
                                                    <div class="row clearfix">
                                                        <div class="col-md-2 column">
                                                            <h5> CPU当前等待率</h5>
                                                        </div>
                                                        <div class="col-md-10 column">
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-waring"
                                                                     role="progressbar" aria-valuenow="20"
                                                                     aria-valuemin="0" aria-valuemax="100"
                                                                     style="width:${system.cpuWait}">${system.cpuWait}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="maven-li">
                                                    <div class="row clearfix">
                                                        <div class="col-md-2 column">
                                                            <h5> CPU当前空闲率</h5>
                                                        </div>
                                                        <div class="col-md-10 column">
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-success"
                                                                     role="progressbar" aria-valuenow="20"
                                                                     aria-valuemin="0" aria-valuemax="100"
                                                                     style="width:${system.cpuFree}">${system.cpuFree}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>


                                    </div> <!-- /plan -->
                                </div>
                            </div>
                            <div class="tab-pane" id="panel-89439">
                                <div class="plan-container">
                                    <div class="plan">
                                        <div class="plan-header"><div class="media well">
                                            <a href="javascript:void(0)" class="pull-left"><img src="static/public/img/43725.png" class="media-object" alt='' /></a>
                                            <div class="media-body">
                                                <h4 class="media-heading">
                                                    内存 信息
                                                </h4>
                                                您可以在这里监控服务器内存的使用情况.
                                            </div>
                                        </div></div>
                                        <div class="plan-features">
                                            <ul style="list-style: none;">
                                                <li class="maven-li">
                                                    <div class="row clearfix">
                                                        <div class="col-md-2 column">
                                                            <h5>内存使用率</h5>
                                                        </div>
                                                        <div class="col-md-10 column">
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-success"
                                                                     role="progressbar" aria-valuenow="20"
                                                                     aria-valuemin="0" aria-valuemax="100"
                                                                     style="width:${system.memoryUsed}">${system.memoryUsed}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="maven-li">
                                                    <div class="row clearfix">
                                                        <div class="col-md-2 column">
                                                            <h5>内存空闲率</h5>
                                                        </div>
                                                        <div class="col-md-10 column">
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-success"
                                                                     role="progressbar" aria-valuenow="20"
                                                                     aria-valuemin="0" aria-valuemax="100"
                                                                     style="width:${system.memoryFree}">${system.memoryFree}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li class="maven-li">
                                                <div class="row clearfix">
                                                    <div class="col-md-2 column">
                                                        <h5>内存交换区使用率</h5>
                                                    </div>
                                                    <div class="col-md-10 column">
                                                        <div class="progress">
                                                            <div class="progress-bar progress-bar-success"
                                                                 role="progressbar" aria-valuenow="20"
                                                                 aria-valuemin="0" aria-valuemax="100"
                                                                 style="width:${system.memorySwapUsed}">${system.memorySwapUsed}
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                                <li class="maven-li">
                                                    <div class="row clearfix">
                                                        <div class="col-md-2 column">
                                                            <h5>内存交换区空闲量</h5>
                                                        </div>
                                                        <div class="col-md-10 column">
                                                            <div class="progress">
                                                                <div class="progress-bar progress-bar-success"
                                                                     role="progressbar" aria-valuenow="20"
                                                                     aria-valuemin="0" aria-valuemax="100"
                                                                     style="width:${system.memorySwapFree}">${system.memorySwapFree}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div> <!-- /plan -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- /row -->
        </div> <!-- /container -->
    </div> <!-- /main-inner -->

</div>

<script src="static/template/js/jquery-1.7.2.min.js"></script>
<script src="static/template/js/excanvas.min.js"></script>
<script src="static/template/js/chart.min.js" type="text/javascript"></script>
<script src="static/template/js/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="static/template/js/full-calendar/fullcalendar.min.js"></script>
<script src="static/template/js/base.js" type="text/javascript"></script>
<script src="static/base/system/index.js" type="text/javascript"></script>
</body>
</html>
