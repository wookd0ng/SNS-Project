<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="login.jsp" method="post">
<table align=center>
<tr><td colspan=2 align=center height=40><b>로그인</b><td></tr>
<tr>
<td align=right>아이디&nbsp;</td>
<td><input type="text" name="id" placeholder="Email address" required></td>
</tr>
<tr>
<td align=right>패스워드&nbsp;</td>
<td><input type="password" name="ps" required></td>
</tr>
<tr>
<td colspan=2 align=center height=50>
<input type="submit" value="로그인하기">
</td>
</tr>
</table>
</form>
</body>