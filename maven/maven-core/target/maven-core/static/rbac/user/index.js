/**
 * 该javascript脚本创建于2016/9/3.
 * author：白彬
 * email：baibinboss@163.com
 */
;(function ($) {
    $(function () {
        // Create your dialog but do not open it.
        var grid = $("#grid-command-buttons").bootgrid({
            ajax: true,
            post: function () {
                return {
                    id: "b0df282a-0d67-40e5-8558-c9e93b7befed"
                };
            },
            url: "/user/list",
            formatters: {
                "commands": function (column, row) {
                    return "<button type=\"button\" class=\"btn btn-xs btn-default command-edit\" data-row-id=\"" + row.id + "\"><span class=\"fa fa-pencil\"></span></button> " +
                        "<button type=\"button\" class=\"btn btn-xs btn-default command-delete\" data-row-id=\"" + row.id + "\"><span class=\"fa fa-trash-o\"></span></button>";
                }
            }
        }).on("loaded.rs.jquery.bootgrid", function () {
            /* Executes after data is loaded and rendered */
            grid.find(".command-edit").on("click", function (e) {
                alert("You pressed edit on row: " + $(this).data("row-id"));
            }).end().find(".command-delete").on("click", function (e) {
                alert("You pressed delete on row: " + $(this).data("row-id"));
            });
        });
        /**
         * 按钮事件绑定
         */
        $("#maven-user-add").click(function () {
            var frame = top;
            if (!frame) {
                frame = window;
            }
            var dialog = new frame.BootstrapDialog({
                message: "<div id=\"maven-user-add-div\">" +
                "        <form role=\"form\">" +
                "            <div class=\"form-group\">" +
                "                <label for=\"email\">用户名</label>" +
                "                <input type=\"email\" class=\"form-control\" id=\"email\" name=\"email\"/>" +
                "            </div>" +
                "            <div class=\"form-group\">" +
                "                <label for=\"password\">密码</label>" +
                "                <input type=\"password\" class=\"form-control\" id=\"password\"/>" +
                "            </div>" +
                "            <div class=\"form-group\">" +
                "                <label for=\"password\">密码</label>" +
                "                <input type=\"password\" class=\"form-control\" id=\"password\"/>" +
                "            </div>" +
                "            <div class=\"form-group\">" +
                "                <label for=\"password\">密码</label>" +
                "                <input type=\"password\" class=\"form-control\" id=\"password\"/>" +
                "            </div>" +
                "            <div class=\"form-group\">" +
                "                <label for=\"password\">密码</label>" +
                "                <input type=\"password\" class=\"form-control\" id=\"password\"/>" +
                "            </div>" +
                "            <div class=\"form-group\">" +
                "                <label for=\"password\">密码</label>" +
                "                <input type=\"password\" class=\"form-control\" id=\"password\"/>" +
                "            </div>" +
                "        </form>" +
                "    </div>"
                ,
                tabindex: 10,
                type: 'type-success',
                title: "用户信息[<span style='color: red'>新增</span>]",
                buttons: [{
                    id: 'btn-ok',
                    icon: 'glyphicon glyphicon-check',
                    label: 'OK',
                    cssClass: 'btn-primary',
                    autospin: false,
                    action: function (dialogRef) {
                        dialogRef.close();
                    }
                }]
            });
            dialog.open();
        });
        $("#maven-user-update").click(function () {

        });
        $("#maven-user-delete").click(function () {

        });
        $("#maven-user-export").click(function () {

        });


    });
})(jQuery);