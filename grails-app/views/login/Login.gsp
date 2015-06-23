<%--
  Created by IntelliJ IDEA.
  User: aditya
  Date: 16/6/15
  Time: 11:28 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>LOGIN PAGE</title>
</head>

<body bgcolor="#ff7f50">
<div>
<table border="4" cellspacing="8" cellpadding="5">
<g:form controller="Login" action="login" method="post">
    <th colspan="2">LOGIN-FORM</th>
    <td>Email:</td>         <td><g:textField name="email" required=""/><br></td>
    <tr><td>PASSWORD:</td> <td><g:passwordField name="password"required=""/><br></td></tr>
    <g:submitButton name="submit"/>
    <br><g:link controller="login" action="forgot">Forgot Password</g:link>
    <br><g:link  controller="user" action="index">new user??</g:link>
</g:form>
    </table>
    </div>
</body>
</html>