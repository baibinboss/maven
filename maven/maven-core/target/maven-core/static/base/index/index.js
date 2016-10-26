/**
 * 该javascript脚本创建于2016/9/1.
 * author：白彬
 * email：baibinboss@163.com
 */
;(function ($) {
    $(function () {
        var href = $(".active").children(".maven-menu").attr("_href");
        $("#maven-main-iframe").attr("src", href);
    });
    /**
     * 菜单绑定点击改变active
     */
    $(".mainnav li").click(function () {
        /**
         * 样式
         */
        $(".mainnav li").removeClass("active");
        $(this).addClass("active");
        var href = $(this).children(".maven-menu").attr("_href");
        $("#maven-main-iframe").attr("src", href);
    });
    $("#maven-main-iframe").on("load", function () {
        var mainheight = $(this).contents().find("body").height() + 30;
        $(this).height(mainheight);
    });
    $("#maven-main-logout").click(function () {
        /**
         * 登出
         * @type {string}
         */
        top.window.location = "/login/logout";
    });

})(jQuery);