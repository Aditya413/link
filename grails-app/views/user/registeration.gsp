<%--
  Created by IntelliJ IDEA.
  User: aditya
  Date: 16/6/15
  Time: 12:21 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>REGISTRATION PAGE</title>
</head>

<body bgcolor="#bdb76b">
<table border="4">
<h1>REGISTRATION FORM</h1>
    <asset:image src=""/>
    <g:uploadForm controller="User" action="save" method="post">
    <td>NAME:</td>             <td><g:textField  name="firstName" required=""/></td>
   <tr><td>EMAIL ID:</td>         <td><g:textField name="email"required="" /></td></tr>
    <tr><td>USER NAME:</td>        <td><g:textField name="userName" required=""/></td></tr>
    <tr><td>PASSWORD:</td>         <td><g:passwordField name="password" required=""/></td></tr>
    <tr><td>RE-ENTER PASSWORD:</td><td><g:passwordField name="confirm_password" required="" /></td></tr>
    <tr><td>LAST NAME:</td>        <td><g:textField name="lastName" required=""/></td></tr>
    <tr><td>UPLOAD PHOTO:</td>     <td><input type="file"/></td></tr>
    <tr><td><g:submitButton name="submit"/></td></tr>
    </g:uploadForm>
</table>
</body>
</html>