<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="cn.liandi.entity.RegisterEntity"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css" type="text/css" />
<title>用户信息</title>
</head>
<body>
	<table align="center" width="100%" bgcolor="#FCF8CB" border="0">
		<tr>
			<td colspan="9"><img
				src="${pageContext.request.contextPath}/images/gongying.jpg"
				width="100%"></td>
		</tr>
		<tr height="40"><td colspan="5" height="30" align="right"><a
					href="/jquery-validateLogin/index.jsp">首页</a>&nbsp;|&nbsp; <a
					href="/jquery-validateLogin/pages/admins/loginSuccess.jsp">返回</a></td></tr>
		<tr>
			<td align="right" rowspan="3" width="600" height="200"><img
				src="${pageContext.request.contextPath}/images/title.png"
				height="80" width="180" /></td>
		</tr>
		<tr>
			<td align="center"><h2>用户列表</h2></td>
		</tr>
		<tr>
			<td align="center">
				<table align="center" border="1" cellspacing="0" cellpadding="5">
					<tr>
					</tr>
					<tr align="center" bgcolor="#ff9">
						<td height="35" width="40">ID</td>
						<td height="35" width="40">帐号</td>
						<td height="35" width="40">密码</td>
						<td height="35" width="40">真名</td>
						<td height="35" width="40">电话</td>
						<td height="35" width="40">邮箱</td>
						<td height="35" width="100">家庭住址</td>
						<td height="35">操作</td>
					</tr>
					<c:forEach var="p" items="${_USERLIST_}">
						<tr align="center">
							<td>${p.userid}</td>
							<td>${p.username}</td>
							<td>${p.password}</td>
							<td>${p.realname}</td>
							<td>${p.telephone}</td>
							<td>${p.email}</td>
							<td>${p.homeaddress}</td>
							<td width="160"><a
								href="${pageContext.request.contextPath}/updateUser?userid=${p.userid}" name="sbm"
								class="sbm_btn">修改</a>| <a
								href="${pageContext.request.contextPath}/deleteUser?userid=${p.userid}"
								name="sbm" class="sbm_btn">删除</a></td>
						</tr>
					</c:forEach>
				

				</table>
			</td>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td colspan="9"><jsp:include page="/pages/buttom.jsp" /></td>
		</tr>
	</table>
</body>
</html>