<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<title>操作台</title>
<%@include file="/static/public/jsp/taglibs.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="static/template/css/bootstrap.min.css" rel="stylesheet">
<link href="static/template/css/bootstrap-responsive.min.css" rel="stylesheet">

<link href="static/template/css/font-awesome.css" rel="stylesheet">
<link href="static/template/css/style.css" rel="stylesheet">
<link href="static/template/css/pages/dashboard.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>
<div class="navbar navbar-fixed-top">
    <%--top--%>
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <a class="brand" href="#">我的bootstrap</a>
                <div class="nav-collapse">
                    <ul class="nav pull-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="icon-cog"></i>
                                账户 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:;">配置</a></li>
                                <li><a href="javascript:;">帮助</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                class="icon-user"></i> 455265752@qq.com <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:;">简况</a></li>
                                <li><a href="javascript:;">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-search pull-right">
                        <input type="text" class="search-query" placeholder="检索"/>
                    </form>
                </div>
            </a>
            <!--/.nav-collapse -->
        </div>
        <!-- /container -->
    </div>
    <!-- /navbar-inner -->
</div>
<!-- /navbar -->
<div class="subnavbar">
    <div class="subnavbar-inner">
        <div class="container">
            <ul class="mainnav">
                <li class="active">
                    <a href="javascript:;" _href="/main/index" class="maven-menu"><i class="icon-dashboard"></i><span>工作台</span> </a>
                </li>
                <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-list-alt"></i><span>信息维护</span> </a>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" _href="/user" class="maven-menu">用户信息</a></li>
                        <li><a href="faq.html">角色信息</a></li>
                        <li><a href="pricing.html">组织信息</a></li>
                        <li><a href="pricing.html">菜单维护</a></li>
                    </ul>
                </li>
                <li><a href="javascript:;"><i class="icon-facetime-video"></i><span>App Tour</span> </a></li>
                <li><a href="javascript:;"><i class="icon-bar-chart"></i><span>Charts</span> </a></li>
                <li><a href="javascript:;"><i class="icon-code"></i><span>Shortcodes</span> </a></li>
                <li class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-long-arrow-down"></i><span>Drops</span> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="icons.html">Icons</a></li>
                        <li><a href="faq.html">FAQ</a></li>
                        <li><a href="pricing.html">Pricing Plans</a></li>
                        <li><a href="login.html">Login</a></li>
                        <li><a href="signup.html">Signup</a></li>
                        <li><a href="error.html">404</a></li>
                    </ul>
                </li>
                <li><a href="javascript:;" _href="/system/index" class="maven-menu"><i class="icon-bar-chart"></i><span>系统信息</span> </a></li>
            </ul>
        </div>
        <!-- /container -->
    </div>
    <!-- /subnavbar-inner -->
</div>
<!-- /subnavbar -->
<iframe src="" id="maven-main-iframe" width="100%"  frameborder="0" style="overflow-y: auto;height:auto;"></iframe>
<!-- /main -->

<%@include file="/static/public/jsp/footer.jsp"%>
<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="static/template/js/jquery-1.7.2.min.js"></script>
<script src="static/template/js/excanvas.min.js"></script>
<script src="static/template/js/chart.min.js" type="text/javascript"></script>
<script src="static/template/js/bootstrap.js"></script>
<script src="static/plugins/bootstrap/js/bootstrap-dialog.js"></script>
<script language="javascript" type="text/javascript"
        src="static/template/js/full-calendar/fullcalendar.min.js"></script>

<script src="static/template/js/base.js"></script>
<script src="static/base/index/index.js" type="text/javascript"></script>
<script>

    var lineChartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [
            {
                fillColor: "rgba(220,220,220,0.5)",
                strokeColor: "rgba(220,220,220,1)",
                pointColor: "rgba(220,220,220,1)",
                pointStrokeColor: "#fff",
                data: [65, 59, 90, 81, 56, 55, 40]
            },
            {
                fillColor: "rgba(151,187,205,0.5)",
                strokeColor: "rgba(151,187,205,1)",
                pointColor: "rgba(151,187,205,1)",
                pointStrokeColor: "#fff",
                data: [28, 48, 40, 19, 96, 27, 100]
            }
        ]

    }

    var myLine = new Chart(document.getElementById("area-chart").getContext("2d")).Line(lineChartData);


    var barChartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [
            {
                fillColor: "rgba(220,220,220,0.5)",
                strokeColor: "rgba(220,220,220,1)",
                data: [65, 59, 90, 81, 56, 55, 40]
            },
            {
                fillColor: "rgba(151,187,205,0.5)",
                strokeColor: "rgba(151,187,205,1)",
                data: [28, 48, 40, 19, 96, 27, 100]
            }
        ]

    }

    $(document).ready(function () {
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var calendar = $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            selectable: true,
            selectHelper: true,
            select: function (start, end, allDay) {
                var title = prompt('Event Title:');
                if (title) {
                    calendar.fullCalendar('renderEvent',
                            {
                                title: title,
                                start: start,
                                end: end,
                                allDay: allDay
                            },
                            true // make the event "stick"
                    );
                }
                calendar.fullCalendar('unselect');
            },
            editable: true,
            events: [
                {
                    title: 'All Day Event',
                    start: new Date(y, m, 1)
                },
                {
                    title: 'Long Event',
                    start: new Date(y, m, d + 5),
                    end: new Date(y, m, d + 7)
                },
                {
                    id: 999,
                    title: 'Repeating Event',
                    start: new Date(y, m, d - 3, 16, 0),
                    allDay: false
                },
                {
                    id: 999,
                    title: 'Repeating Event',
                    start: new Date(y, m, d + 4, 16, 0),
                    allDay: false
                },
                {
                    title: 'Meeting',
                    start: new Date(y, m, d, 10, 30),
                    allDay: false
                },
                {
                    title: 'Lunch',
                    start: new Date(y, m, d, 12, 0),
                    end: new Date(y, m, d, 14, 0),
                    allDay: false
                },
                {
                    title: 'Birthday Party',
                    start: new Date(y, m, d + 1, 19, 0),
                    end: new Date(y, m, d + 1, 22, 30),
                    allDay: false
                },
                {
                    title: 'EGrappler.com',
                    start: new Date(y, m, 28),
                    end: new Date(y, m, 29),
                    url: 'http://EGrappler.com/'
                }
            ]
        });
    });
</script><!-- /Calendar -->
</body>
</html>
