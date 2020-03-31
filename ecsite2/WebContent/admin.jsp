<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<link rel ="stylesheet" type="text/css" href="./css/style.css">

<title>管理者TOP画面</title>

</head>

<body>

	<div id="header">
	</div>
	<div id="main">

		<div id="top">
			<p>管理者TOP画面</p>
		</div>

		<table>
			<tr>
				<th>商品</th>
				<th>ユーザー</th>
			</tr>
			<tr>
				<td><s:form action="ItemCreateAction">
						<s:submit value="新規登録"/>
					</s:form>
				</td>
				<td><s:form action="UserCreateAction">
						<s:submit value="新規登録"/>
					</s:form>
				</td>
			</tr>
			<tr>
				<td><s:form action="ItemListAction">
						<s:submit value="一覧"/>
					</s:form>
				</td>
				<td><s:form action="UserListAction">
						<s:submit value="一覧"/>
					</s:form>
				</td>
			</tr>
		</table>
	</div>

	<div id="footer">
	</div>
</body>
</html>