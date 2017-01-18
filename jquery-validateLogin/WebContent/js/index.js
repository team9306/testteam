var $151=$;
$151(function() {
	$151.floatingAd({
		// 频率
		delay : 20,
		// 超链接后是否关闭漂浮
		isLinkClosed : true,
		// 漂浮内容
		ad : [ {
			// 关闭区域背景透明度(0.1-1)
			headFilter : 0.3,
			// 图片
			'img' : 'images/ad1.gif',
			// 图片高度
			'imgHeight': 150,
			// 图片宽度
			'imgWidth': 150,
			// 图片链接
			'linkUrl' : 'http://www.liandisys.com.cn/',
			// 浮动层级别
			'z-index' : 100,
			// 标题
			'title' : '联迪信息'
		},],
		// 关闭事件
		onClose : function(elem) {
			//alert('关闭');
		}
	});

	$("#aa").floatingAd({
		onClose : function(elem) {
		}
	});

});