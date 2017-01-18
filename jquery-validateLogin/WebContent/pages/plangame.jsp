<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>飞机大战</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.4.4.js"></script>

</head>
<body>
	<div >
		<div id="contentdiv" >
			<div id="startdiv">
				<button onclick="begin()">开始游戏</button>
			</div>
			<div id="maindiv">
				<div id="scorediv">
					<label>分数：</label> <label id="label">0</label>
				</div>
				<div id="suspenddiv">
					<button>继续</button>
					<br />
					<button>重新开始</button>
					<br />
					<button>回到主页</button>
				</div>
				<div id="enddiv">
					<p class="plantext">飞机大战分数</p>
					<p id="planscore">0</p>
					<div>
						<button onclick="jixu()">继续</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>