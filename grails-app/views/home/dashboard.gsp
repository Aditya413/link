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

    <title>Welcome ${u1.firstName}</title>
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

</div>
<div style="width: 50%; float: right;">
    <div>
        <g:render template="inbox" model="[u1: u1, inboxlist:inboxlist,userTopic:userTopic,userTop5:userTop5]"/>
    </div>
    <div class="createLinkRes" id="createLinkRes"  style="float:right;z-index: 500;right: 0px;border:solid thick ;border-radius: 25px;height:310px;width:450px;margin-top:auto;">
        <g:render template="createLinkResource" model="[usertopics:usertopics]" />
    </div>
    <div class="createTopic" id="createTopic"  style="float:left;z-index: 500;right: 0px;border:solid thick ;border-radius: 25px;height:200px;width:450px;margin-bottom: 10px;">
        <g:render template="createTopic" />
    </div>


</div>
</body>
</html>