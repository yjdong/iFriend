<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="images/Outdoor.css" type="text/css" />
<title>错误提示</title>
</head>
<body>
<table align="center" bgColor="#cccccc" border="0" cellPadding="0"
	cellSpacing="0" width="273">
	<%if (request.getAttribute("error") != null) {%>
	<tr>
		<td colspan=2 height="50" align=center><strong><font color="red"><%=request.getAttribute("error")%></font></strong>
		</td>
	</tr>
	<%}

		%>
		<tr>
		<td colspan=2  height="50" align=center><strong><font color="blue"><a href="javascript:history.back();">返回</a></font></strong>
		</td>
	</tr>
</table>
</body>
</html>
