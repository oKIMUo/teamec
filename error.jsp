<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="refresh" content="3; URL='HomeAction'"/>
	<link rel="stylesheet" href="./css/style.css">
	<title>エラー画面</title>
</head>
<body>
	<s:include value="header.jsp" />
	<div id = "contents">
		<div class = "error">
			<h1>error</h1>
		</div>
	</div>
	<s:include value="footer.jsp" />
</body>
</html>