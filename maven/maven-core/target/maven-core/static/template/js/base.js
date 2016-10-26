$(function () {
	$('.subnavbar').find ('li').each (function (i) {
		var mod = i % 3;
		if (mod === 2) {
			$(this).addClass ('subnavbar-open-right');
		}
	});
	
});
$.utils = {
	StringUtils : {
		isBlank : function(src) {
			if (src == undefined || src == '') {
				return true;
			}else {
				return false;
			}
		},
		isNotBlank:function(src) {
			return !this.isBlank(src);
		}
	}
};
