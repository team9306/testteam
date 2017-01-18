<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css" type="text/css" />
<title>LoginSuccess</title>
</head>
<body>
	<form name="allUserSelect" action="allUserSelect" method="post">
		<table align="center" width="100%" bgcolor="#FCF8CB">
			<tr>
				<td colspan="3"><img
					src="${pageContext.request.contextPath}/images/gongying.jpg"
					width="100%"></td>
			</tr>
			<tr height="40"></tr>
			<tr>
				<td align="center"><img
					src="${pageContext.request.contextPath}/images/title.png"
					height="80" width="200" /></td>
				<td>用户信息修改成功！</td>
				<td align="left"><a
					href="/jquery-validateLogin/pages/admins/loginSuccess.jsp" name="sbm"
					class="sbm_btn">返回</a></td>
			</tr>
			<tr height="200"></tr>
			<tr>
				<td colspan="3"><jsp:include page="/pages/buttom.jsp" /></td>
			</tr>
		</table>
	</form>
</body>
</html>