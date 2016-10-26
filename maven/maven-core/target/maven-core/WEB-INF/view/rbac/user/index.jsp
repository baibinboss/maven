<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<title>操作台</title>
<%@include file="/static/public/jsp/taglibs.jsp" %>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link href="static/plugins/bootstrap/css/jquery.bootgrid.css" rel="stylesheet">
<link href="static/plugins/bootstrap/css/icon.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <!--下面是代码任务部分--->


    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="btn-group">

                <button class="btn btn-success" type="button" id="maven-user-add"><em class="icon-plus"></em> 新增
                </button>
                <button class="btn btn-warning" type="button" id="maven-user-update"><em class="icon-edit"></em> 修改
                </button>
                <button class="btn btn-danger" type="button" id="maven-user-delete"><em class="icon-remove"></em> 删除
                </button>
                <button class="btn btn-success" type="button" id="maven-user-export"><em class="icon-download"></em> 导出
                </button>
            </div>

            <table id="grid-command-buttons" class="table table-condensed table-hover table-striped">
                <thead>
                <tr>
                    <th data-column-id="id" data-type="numeric">ID</th>
                    <th data-column-id="sender">Sender</th>
                    <th data-column-id="received" data-order="desc">Received</th>
                    <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="static/template/js/excanvas.min.js"></script>
<script src="static/template/js/chart.min.js" type="text/javascript"></script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->


<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="static/plugins/bootstrap/js/bootstrap-dialog.js"></script>
<script src="static/plugins/bootstrap/js/jquery.bootgrid.js"></script>
<script src="static/plugins/bootstrap/js/jquery.bootgrid.fa.js"></script>
<script language="javascript" type="text/javascript" src="static/template/js/full-calendar/fullcalendar.min.js"></script>

<script src="static/template/js/base.js"></script>
<script src="static/rbac/user/index.js"></script>
</body>
</html>
