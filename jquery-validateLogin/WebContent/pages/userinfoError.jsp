<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>LoginSuccess</title>
</head>
<body>
	<table align="center" width="100%" bgcolor="#FCF8CB">
		<tr>
			<td colspan="2"><img
				src="${pageContext.request.contextPath}/images/gongying.jpg"
				width="100%" ></td>
		</tr>
		<tr height="40"></tr>
		<tr>
			<td align="center"><img
				src="${pageContext.request.contextPath}/images/title.png"
				height="80" width="200" /></td>
			<td>抱歉，查询失败！</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="/pages/buttom.jsp"/>
			</td>
		</tr>
	</table>
</body>
</html>