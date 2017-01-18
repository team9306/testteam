<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home.css" type="text/css" />
<title>LoginSuccess</title>
</head>
<body>
	<form name="allUserSelect" action="allUserSelect" method="post">
		<table align="center" width="100%" bgcolor="#FCF8CB" border="0">
			<tr>
				<td colspan="3"><img
					src="${pageContext.request.contextPath}/images/gongying.jpg"
					width="100%"></td>
			</tr>
			<tr height="40" align="right">
				<td align="right" colspan="3"><a
					href="${pageContext.request.contextPath}/pages/admins/adminlogin.jsp">退出系统&nbsp;&nbsp;&nbsp;</a></td>
			</tr>
			<tr>
				<td align="center" width=35%><img
					src="${pageContext.request.contextPath}/images/title.png"
					height="80" width="200" /></td>
				<td width=30%>恭喜你！${_USERLOGIN_},登录成功！</td>
				<td align="left"><a
					href="javascript:document.allUserSelect.submit();" name="sbm"
					class="sbm_btn">所有用户信息</a></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td align="left"><a
					href="${pageContext.request.contextPath}/pages/admins/addUser.jsp" name="sbm"
					class="sbm_btn">添加用户</a></td>
			</tr>
			<tr height="200"></tr>
			<tr>
				<td colspan="3"><jsp:include page="/pages/buttom.jsp" /></td>
			</tr>
		</table>
	</form>
</body>
</html>