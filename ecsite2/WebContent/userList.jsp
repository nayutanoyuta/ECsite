<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<link rel ="stylesheet" type="text/css" href="./css/style.css">

<title>UserList画面</title>

</head>

<body>

	<div id="header">
	</div>
	<div id="main">

		<div id="top">
			<p>UserList</p>
		</div>

		<div>
			<s:if test="userListDTOList == null">
				<h3>ユーザー情報はありません。</h3>
			</s:if>
			<s:elseif test="message == null">
				<h3>ユーザー情報は以下になります。</h3>

				<table border="1">
					<tr>
						<th>ID</th>
						<th>ログインID</th>
						<th>パスワード</th>
						<th>名前</th>
						<th>登録日</th>
						<th>更新日</th>
						<th>詳細</th>
					</tr>
					<s:iterator value="UserListDTOList">
						<tr>
							<td><s:property value="id"/></td>
							<td><s:property value="loginUserId"/></td>
							<td><s:property value="loginPassword"/></td>
							<td><s:property value="UserName"/></td>
							<td><s:property value="insert_date"/></td>
							<td><s:property value="update_date"/></td>
							<td>
							<a href='<s:url action="UserDetailsAction">
								<s:param name="loginUserId" value="%{loginUserId}"/></s:url>'>詳細</a>
							</td>
						</tr>
					</s:iterator>
				</table>
			</s:elseif>

			<div id="text-right">
				<p>管理者画面へ戻る場合は<a href='<s:url action="AdminAction"/>'>こちら</a></p>
			</div>

		</div>

	</div>

	<div id="footer">
	</div>
</body>
</html>