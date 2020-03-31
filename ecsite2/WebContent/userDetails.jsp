<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<link rel ="stylesheet" type="text/css" href="./css/style.css">

<title>UserDetails画面</title>

</head>

<body>

	<div id="header">
	</div>
	<div id="main">

		<div id="top">
			<p>UserDetails</p>
		</div>
		<div>
			<s:if test="userListDTO == null">
				<h3>ユーザーの詳細情報はありません。</h3>
			</s:if>
			<s:elseif test="message == null">
				<h3>ユーザー情報は以下になります。</h3>
				<table border="1">
					<tr>
						<th>ID</th>
						<td><s:property value="userListDTO.id"/></td>
					</tr>
					<tr>
						<th>ログインID</th>
						<td><s:property value="userListDTO.loginUserId"/></td>
					</tr>
					<tr>
						<th>パスワード</th>
						<td><s:property value="userListDTO.loginPassword"/></td>
					</tr>
					<tr>
						<th>ユーザー名</th>
						<td><s:property value="userListDTO.userName"/></td>
					</tr>
					<tr>
						<th>登録日</th>
						<td><s:property value="userListDTO.insert_date"/></td>
					</tr>
					<tr>
						<th>更新日</th>
						<td><s:property value="userListDTO.update_date"/></td>
					</tr>
				</table>

				<s:form action="UserDeleteConfirmAction">
					<s:submit value="削除"/>
					<s:hidden name="loginUserId" value="%{loginUserId}"/>
				</s:form>
			</s:elseif>
			<div id="texte-right">
				<p>管理者TOP画面へ戻る場合は<a href='admin.jsp'>こちら</a></p>
			</div>
		</div>

	</div>

	<div id="footer">
	</div>

</body>
</html>