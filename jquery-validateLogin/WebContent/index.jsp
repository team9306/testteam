<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pageSwitch.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ad.css">
<title>用户登录</title>

<script src="${pageContext.request.contextPath}/js/jquery-1.4.4.js"></script>
<script src="${pageContext.request.contextPath}/js/user.js"></script>

<script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/floatingAd.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>

<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/pageSwitch.min.js"></script>
<script src="${pageContext.request.contextPath}/js/container.js"></script>

<script type="text/javascript">
	function getLangDate() {
		var dateObj = new Date(); //表示当前系统时间的Date对象 
		var year = dateObj.getFullYear(); //当前系统时间的完整年份值
		var month = dateObj.getMonth() + 1; //当前系统时间的月份值 
		var date = dateObj.getDate(); //当前系统时间的月份中的日
		var day = dateObj.getDay(); //当前系统时间中的星期值
		var weeks = [ "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" ];
		var week = weeks[day]; //根据星期值，从数组中获取对应的星期字符串 
		var hour = dateObj.getHours(); //当前系统时间的小时值 
		var minute = dateObj.getMinutes(); //当前系统时间的分钟值
		var second = dateObj.getSeconds(); //当前系统时间的秒钟值
		//如果月、日、小时、分、秒的值小于10，在前面补0
		if (month < 10) {
			month = "0" + month;
		}
		if (date < 10) {
			date = "0" + date;
		}
		if (hour < 10) {
			hour = "0" + hour;
		}
		if (minute < 10) {
			minute = "0" + minute;
		}
		if (second < 10) {
			second = "0" + second;
		}
		var newDate = year + "年" + month + "月" + date + "日 " + week + " "
				+ hour + "时" + minute + "分" + second + "秒";
		document.getElementById("dateStr").innerHTML = "[ " + newDate + " ]";
		setTimeout("getLangDate()", 1000);//每隔1秒重新调用一次该函数 
	}
</script>
</head>
<body onload="changeImg(),getLangDate()">
	<form name="formLogin"
		action="${pageContext.request.contextPath}/login" method="post">
		<table align="center" width="100%" border="0" cellpadding="0"
			cellspacing="0" style="border-collapse: collapse;" bgcolor="#fffff0">
			<tr>
				<td align="left" height="100"><img
					src="${pageContext.request.contextPath}/images/title.png"
					height="40" width="200" /></td>
				<td align="right"><div id="dateStr">载入时间中...</div></td>
			</tr>
			<tr>
				<td colspan="5"><jsp:include page="/pages/menu.jsp" /></td>
			</tr>
			<tr>
				<td colspan="5">
					<div id="container">
						<div class="sections">
							<div class="section" id="section0"></div>
							<div class="section" id="section1"></div>
							<div class="section" id="section2"></div>
							<div class="section" id="section3"></div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td height="40"></td>
			</tr>
			<tr>
				<td align="center" width="200">
					<!-- 左侧待补充 -->
				</td>
				<td width="550">

					<div id="login_form" class="login_form">
						<div class="title" align="center">用户登录</div>

						<table width="100%" border="0">
							<tr>
								<td align="right" width=30%>账&nbsp;号:</td>
								<td><input type="text" id="user_name" name="username"
									class="name" title="请输入账号"><span id="message"> </span></td>
							</tr>
							<tr>
								<td align="right">密&nbsp;码:</td>
								<td height="60"><input type="password" id="pass_word"
									name="password" class="pwd" title="请输入密码"></td>
							</tr>
							<tr>
								<td align="right">验证码:</td>
								<td height="60" align="center">
									<p>
										<input type="text" name="code" id="codeInput" class="code"
											title="验证码" style="border-radius: 5px; height: 35px;">
										<span id="code" title="看不清，换一张"
											style="background: #34495e; display: inline-table; width: 20%; height: 35px; color: #FFF; border-radius: 5px; line-height: 35px;">
										</span>
									</p>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<p class="errorTips" id="errorTips"></p>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center"><a
									href="javascript:document.formLogin.submit();" name="sbm"
									class="sbm_btn" onclick="return check()"
									onclick="return validateLogin()">登录</a> <a
									href="/jquery-validateLogin/pages/register.jsp" name="reg"
									class="sbm_btn">注册</a></td>
							</tr>
						</table>
					</div>
				</td>
			<tr>
				<td colspan="5"><jsp:include page="/pages/buttom.jsp" /></td>
			</tr>
		</table>
	</form>
</body>
</html>