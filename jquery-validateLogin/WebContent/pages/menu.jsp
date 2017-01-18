<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 </head>
  <body>
	<table border="0" width="100%" height="30" bgcolor="#ffffe0">
		<tr>		
			<td width="100" align="center"
				onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/systemImages/topMenu.jpg)'"
				onMouseOut="this.style.backgroundImage=''">
				<a href="${pageContext.request.contextPath}/index.jsp"  class="a1">首页</a>			
			</td>
			
			<td width="100" id="ajax_show_latest" style="cursor:pointer" align="center"
				onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/systemImages/topMenu.jpg)'"
				onMouseOut="this.style.backgroundImage=''">
				产品			
			</td>
			
			<td width="100" id="ajax_show_discount" style="cursor:pointer" align="center"
				onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/systemImages/topMenu.jpg)'"
				onMouseOut="this.style.backgroundImage=''">
				解决方案		
			</td>

			<td width="100" id="ajax_register1" style="cursor:pointer" align="center"
				onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/systemImages/topMenu.jpg)'"
				onMouseOut="this.style.backgroundImage=''">
				服务		
			</td>
			
			
			<td width="100" id="ajax_show_order" style="cursor:pointer" align="center"
				onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/systemImages/topMenu.jpg)'"
				onMouseOut="this.style.backgroundImage=''">
				人才招聘		
			</td>
			
			<td width="100" id="ajax_show_cart" style="cursor:pointer" align="center"
				onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/systemImages/topMenu.jpg)'"
				onMouseOut="this.style.backgroundImage=''">
				关于我们	
			</td>			
			
			<td width="100" align="center"
				onMouseOver="this.style.backgroundImage='url(${pageContext.request.contextPath}/images/systemImages/topMenu.jpg)'"
				onMouseOut="this.style.backgroundImage=''">
				<a href="${pageContext.request.contextPath}/pages/admins/adminlogin.jsp"  class="a1">后台维护</a>			
			</td>	
		</tr>
	</table>
  </body>
</html>
