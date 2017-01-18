<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/userinfo.css" type="text/css" />
<title>用户信息</title>
</head>
<body>
	<table align="center" width="100%" bgcolor="#FCF8CB">
		<tr>
			<td colspan="7"><img
				src="${pageContext.request.contextPath}/images/gongying.jpg"
				width="100%"></td>
		</tr>
		<tr height="40"></tr>
		<tr >
			<td align="center" rowspan="7" width="300"><img
				src="${pageContext.request.contextPath}/images/title.png"
				height="80" width="200" /></td>
			<td align="right" height="35">ID:</td>
			<td>${_USERINFO_.userid}</td>
		</tr>
		<tr >
			<td align="right" height="35">帐号:</td>
			<td>${_USERINFO_.username}</td>
		</tr>
		<tr>
			<td align="right" height="35">密码:</td>
			<td>${_USERINFO_.password}</td>
		</tr>
		<tr>
			<td align="right" height="35">真名:</td>
			<td>${_USERINFO_.realname}</td>
		</tr>
		<tr>
			<td align="right" height="35">电话:</td>
			<td>${_USERINFO_.telephone}</td>
		</tr>
		<tr>
			<td align="right" height="35">邮箱:</td>
			<td>${_USERINFO_.email}</td>
		</tr>
		<tr>
			<td align="right" height="35">家庭住址:</td>
			<td>${_USERINFO_.homeaddress}</td>
		</tr>
		<tr>
			<td></td>
			<td colspan="1" align="right" width="400" height="60"><a
				href="/jquery-validateLogin/pages/editUser.jsp" name="sbm"
				class="sbm_btn">修改</a></td>
			<td width="400"><a href="javascript:history.go(-1)" name="sbm"
				class="sbm_btn">返回</a></td>
		</tr>
		<tr>
			<td colspan="7"><jsp:include page="/pages/buttom.jsp" /></td>
		</tr>
	</table>
</body>
</html>