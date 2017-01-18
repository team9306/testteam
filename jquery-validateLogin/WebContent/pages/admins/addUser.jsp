<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/user.css" type="text/css" />
<title>添加用户</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.4.4.js"></script>
<script src="${pageContext.request.contextPath}/js/user.js"></script>
</head>
<body>
	<table align="center" width="100%" bgcolor="#FCF8CB" border="0">
		<tr>
			<td colspan="2"><img
				src="${pageContext.request.contextPath}/images/gongying.jpg"
				width="100%"></td>
		</tr>
		<tr height="40">
			<td colspan="5" height="30" align="right"><a
				href="/jquery-validateLogin/index.jsp">首页</a>&nbsp;|<a
				href="/jquery-validateLogin/pages/admins/loginSuccess.jsp">&nbsp;返回</a></td>
		</tr>
		<tr height="40">
			<td colspan="5" height="30" align="center"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;添加用户</h2></td>
		</tr>
		<tr>
			<td align="center" width=40%><img
				src="${pageContext.request.contextPath}/images/title.png"
				height="80" width="200" /></td>
			<td>
				<form name="formregister"
					action="${pageContext.request.contextPath}/register" method="post"
					onsubmit="return validateRegister()">
					<table border="0" width="800" align="center">
						<tr>
							<td rowspan="6" width="100" align="right"><img
								src="${pageContext.request.contextPath}/images/peoplePhoto.png">
							</td>
							<td align="right" width="20" class="int"><label
								for="username">用户：</label></td>
							<td width="350"><input name="username" id="username"
								type="text" size="20" class="required" /></td>
						</tr>
						<tr>
							<td width="20%" align="right"><label for="password">密码：</label></td>
							<td><input name="password" type="password" id="password"
								size="20" class="required" /></td>
						</tr>
						<tr>
							<td align="right"><label for="realname">真名：</label></td>
							<td><input name="realname" id="realname" type="text"
								size="20" /></td>
						</tr>
						<tr>
							<td align="right"><label for="telephone">电话：</label></td>
							<td><input name="telephone" id="telephone" type="text"
								size="20" class="required" /></td>
						</tr>
						<tr>
							<td width="20%" align="right"><label for="email">邮箱：</label></td>
							<td><input name="email" id="email" type="text" size="20"
								class="required" /></td>
						</tr>
						<tr>
							<td width="20%" align="right"><label for="homeaddress">家庭地址：</label></td>
							<td><input name="homeaddress" id="homeaddress" type="text"
								size="20" /></td>
						</tr>
						<tr>
							<td colspan="2" align="right" height="65"><a
								href="javascript:document.formregister.submit();" name="sbm"
								class="sbm_btn" id="send">提交</a></td>
							<td><a href="javascript:;" id="res" class="sbm_btn">重置</a></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="/pages/buttom.jsp" /></td>
		</tr>
	</table>
</body>
</html>