<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员登录</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.4.4.js"></script>
<script src="${pageContext.request.contextPath}/js/admin.js"></script>

</head>
<body onload="changeImg()"
	background="${pageContext.request.contextPath}/images/bg-admin.jpg">
	<form name="adminLogin"
		action="${pageContext.request.contextPath}/adminLogin"
		onsubmit="return validateLogin()" method="post">
		<table align="center" width="100%" border="0">
			<tr height="200">
				<td colspan="3" align="right"><a
					href="${pageContext.request.contextPath}/index.jsp"
					style="text-decoration: none"><span style="width:80;height:50;background-color: #ffffa0">首页</span>&nbsp;&nbsp;</a></td>
			</tr>
			<tr>
				<td width=35%></td>
				<td align="center" bgcolor="#B0E0E6">
					<h1>管理员登录</h1>
				</td>
				<td width=35%></td>
			</tr>
			<tr>
				<td width=30%></td>
				<td bgcolor="#B0E0E6">
					<table align="center" border="0">
						<tr>
							<td align="right">账&nbsp;号:</td>
							<td style="height: 48px; width: 280px;"><input type="text"
								id="admin_name" name="adminname" title="请输入账号" size="30"
								style="border-radius: 5px; height: 25px;"><span
								id="message"> </span></td>
						</tr>
						<tr>
							<td align="right">密&nbsp;码:</td>
							<td style="height: 48px; width: 280px; border-radius: 5px;"><input
								type="password" id="adminpass_word" name="password"
								title="请输入密码" size="30"
								style="border-radius: 5px; height: 25px;"></td>
						</tr>
						<tr>
							<td align="right" style="width: 65px;">验证码:</td>
							<td style="height: 41px; width: 280px">
								<p>
									<input type="text" name="code" id="codeInput" class="code"
										title="验证码" style="border-radius: 5px; height: 25px;">
									<span id="code" title="看不清，换一张"
										style="background: #34495e; display: inline-table; width: 20%; height: 25px; color: #FFF; top: 0px; left: 60%; border-radius: 5px; text-align: center;"></span>
								</p>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center" height="20" id="errorTips"></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><span
								style="background: #1abc9c; display: block; width: 30%; border-radius: 5px; height: 25px; text-align: center"><a
									href="javascript:document.adminLogin.submit();" name="sbm"
									onclick="return check()">登录</a></span></td>
						</tr>
					</table>
				</td>
				<td width=30%></td>
			</tr>

		</table>
	</form>
</body>
</html>