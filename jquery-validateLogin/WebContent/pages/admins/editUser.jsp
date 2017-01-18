<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/edituser.css"
	type="text/css" />
<title>用户信息</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.4.4.js"></script>
<script src="${pageContext.request.contextPath}/js/user.js"></script>
</head>
<body>
	<form name=edituser action="adminEditUser" method="post" >
		<table align="center" width="100%" bgcolor="#FCF8CB">
			<tr>
				<td colspan="7"><img
					src="${pageContext.request.contextPath}/images/gongying.jpg"
					width="100%"></td>
			</tr>
			<tr height="40"></tr>
			<tr>
				<td align="center" rowspan="7" width="300"><img
					src="${pageContext.request.contextPath}/images/title.png"
					height="80" width="200" /></td>
				<td align="right" height="35">ID:</td>
				<td><input type="text" value=${_USERINFO_.userid } id="userid"
					name="userid" class="required" readonly="readonly" /></td>
			</tr>
			<tr>
				<td align="right" height="35">帐号:</td>
				<td><input type="text" value=${_USERINFO_.username }
					id="username" name="username" class="required" /></td>
			</tr>
			<tr>
				<td align="right" height="35">密码:</td>
				<td><input type="text" value=${_USERINFO_.password }
					id="password" name="password" class="required" /></td>
			</tr>
			<tr>
				<td align="right" height="35">真名:</td>
				<td><input type="text" value=${_USERINFO_.realname }
					id="realname" name="realname" /></td>
			</tr>
			<tr>
				<td align="right" height="35">电话:</td>
				<td><input type="text" value=${_USERINFO_.telephone }
					id="telephone" name="telephone" class="required" /></td>
			</tr>
			<tr>
				<td align="right" height="35">邮箱:</td>
				<td><input type="text" value=${_USERINFO_.email } id="email"
					name="email" class="required" /></td>
			</tr>
			<tr>
				<td align="right" height="35">家庭住址:</td>
				<td><input type="text" value=${_USERINFO_.homeaddress }
					id="homeaddress" name="homeaddress" /></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="1" align="right" width="400" height="60"><a
					href="javascript:document.edituser.submit();" id="sbm"
					class="sbm_btn">确定</a></td>
				<td width="400"><a href="javascript:;" id="goback"
					name="goback" class="sbm_btn">返回</a></td>
			</tr>
			<tr>
				<td colspan="7"><jsp:include page="/pages/buttom.jsp" /></td>
			</tr>
		</table>
	</form>
</body>
</html>