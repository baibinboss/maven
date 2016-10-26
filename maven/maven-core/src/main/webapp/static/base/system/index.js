/**
 * 该javascript脚本创建于2016/9/1.
 * author：白彬
 * email：baibinboss@163.com
 */
;(function($) {
    $(".progress-bar").each(function() {
        var $this = $(this);
        var content = $this.html();
        if($.utils.StringUtils.isNotBlank(content)) {
            content = parseFloat(content);
            if (content <=50) {
                $(this).removeClass().addClass("progress-bar").addClass("progress-bar-success");
            }else if(content<=80){
                $(this).removeClass().addClass("progress-bar").addClass("progress-bar-warning");
            }else {
                $(this).removeClass().addClass("progress-bar").addClass("progress-bar-danger");
            }
        }
    });
})(jQuery);