<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/header.css">
	<link href="https://fonts.googleapis.com/css?family=Diplomata+SC" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Serif+JP" rel="stylesheet">

	<title>ヘッダー</title>

	<script>
		function goLoginAction() {
			document.getElementById("form").action = "GoLoginAction";
		}

		function goMyPageAction() {
			document.getElementById("form").action = "MyPageAction";
		}

		function goCartAction() {
			document.getElementById("form").action = "CartAction";
		}

		function goProductListAction() {
			document.getElementById("categoryId").value = 0;
			document.getElementById("form").action = "ProductListAction";
		}

		function goLogoutAction() {
			document.getElementById("form").action = "LogoutAction";
		}

		function goSearchItemAction() {
			document.getElementById("form").action = "SearchItemAction";
		}

	</script>
</head>
<body>
	<header>
		<div id = "header">
			<div id = "header-title">
			<a HREF="HomeAction">anemone</a>
			</div>

			<div id = "header-menu">
				<ul>
					<s:form id = "form" name = "form">
						<s:if test = 'session.containsKey("mCategoryList")'>
							<li>
								<s:select name = "categoryId" list = "#session.mCategoryList" listValue = "categoryName" listKey = "categoryId" class = "cs-div" id = "categoryId"/>
								<span class="bottom-line"></span>
							</li>
						</s:if>

						<li><s:textfield name = "keywords" class = "txt-keywords" placeholder = "検索ワード"/></li>
						<li><s:submit value = "商品検索" class = "submit_btn" onclick = "goSearchItemAction();"/></li>

						<s:if test = "#session.logined == 1">
							<li><s:submit value = "ログアウト" class = "submit_btn" onclick = "goLogoutAction();"/></li>
						</s:if>

						<s:else>
							<li><s:submit value = "ログイン" class = "submit_btn" onclick = "goLoginAction();"/></li>
						</s:else>

						<li><s:submit value = "カート" class = "submit_btn" onclick = "goCartAction();"/></li>
						<li><s:submit value = "商品一覧" class = "submit_btn" onclick = "goProductListAction();"/></li>

						<s:if test = "#session.logined == 1">
							<li><s:submit value = "マイページ" class = "submit_btn" onclick = "goMyPageAction();"/></li>
						</s:if>
 					</s:form>
				</ul>
			</div>
		</div>
	</header>
</body>
</html>