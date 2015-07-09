<%--
  Created by IntelliJ IDEA.
  User: aditya
  Date: 1/7/15
  Time: 5:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="link.User; link.Topic; link.Resource;link.Subscription;" %>
<html>
<head>
    <meta name="layout" content= "main">

    <title>Welcome${u1.firstName}</title>
</head>

<body>
<div style="width: 40%;float: left;">
    <div>
        <g:render template="userDetails" model="[u1:u1,userSub:userSub,userTopic:userTopic]" />
    </div>
        <div>
            <g:render template="subscription" model="[u1: u1,userTop5:userTop5]"/>
        </div>
    <div>
        <g:render template="trending" model="[u1: u1,trendingTopics:trendingTopics,userTop5:userTop5]"/>
    </div>

    <div>
        <g:render template="inbox" model="[u1: u1, inboxL:inboxL,userTopic:userTopic,userTop5:userTop5]"/>
    </div>
</div>
</body>
</html>