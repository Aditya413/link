<%--
  Created by IntelliJ IDEA.
  User: aditya
  Date: 19/6/15
  Time: 12:54 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>reset password</title>
</head>
<body>
<h2>Reset your password</h2>
<g:form controller="login" action="reset" method="post">
ENTER EMAIL ID<g:textField name="email" required=""/><br>
ENTER NEW PASSWORD<g:textField name="password" required=""/><br>
<g:submitButton name="submit"/><br>
</g:form>
</body>
</html>