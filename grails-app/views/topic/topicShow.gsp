<%--
  Created by IntelliJ IDEA.
  User: aditya
  Date: 11/7/15
  Time: 6:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="link.User; link.Topic; link.Resource;link.Subscription;" %>
<html>
<head>
    <title></title>
</head>

<body>


<div style="width: 40%;float: left;">



    <div style="float:left;border:solid thick ;border-radius: 25px;height:250px;width:450px;margin-bottom: 2px">

        <table align="left" border="1" cellpadding="1" cellspacing="1" style="width:450px ;height: 250px">
            <thead>
            <tr>
                <th colspan="2" scope="row">
                    <div style=" padding: 5px 10px;">Topic : ${topics.name}</div>
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row" style="text-align: left;">
                    <div>

                        <div style="float: left; width: 290px;">
                            <div>
                                <div style="float:inherit;">

                                    <p>${topics.name} (${topics.visibility})</p>
                                    <p>@${topics.users}</p>
                                </div>

                                <div style="float: left;">
                                    <g:if test="${showToSubscribe}">
                                        <g:link controller="home" action="dashboard">subscribe&nbsp;&nbsp;</g:link>
                                    </g:if>
                                    <g:else>
                                        <g:link controller="home" action="dashboard">Unsubscribe&nbsp;&nbsp;</g:link>
                                    </g:else>
                                </div>
                                <div style="float: left;">

                                    <p>Subscription</p>
                                    <p>${topics.subscriptions.size()}</p>
                                </div>
                                <div style="float: right">
                                    <p>Posts</p>
                                    <p>${topicResources.size()}</p>
                                </div>
                                <div style="float:inherit;">
                                    <select name="seriousness"><option value="Serious">Serious</option><option value="VerySerious">VerySerious</option> </select>

                                </div>

                            </div>
                        </div>

                    </div>
                </th>
            </tr>


            </tbody>
        </table>

    </div>
    <div style="float:left;border:solid thick ;border-radius: 25px;height:250px;width:450px;margin-bottom: 2px">

        <table align="left" border="1" cellpadding="1" cellspacing="1" style="width:450px ;height: 250px">
            <thead>
            <tr>
                <th colspan="2" scope="row">
                    <div style=" padding: 5px 10px;">Users :"${topics.name}"</div>
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row" style="text-align: left;">
                    <div>

                        <div style="float: left; width: 300px;">
                            <div>
                                <div style="float:left;align-items: center">
                                    <g:each in="${topicUsers}" var="user">

                                        <g:render template="/home/userDetails" model="[users:user]" />
                                    </g:each>

                                </div>

                            </div>
                        </div>

                    </div>
                </th>
            </tr>


            </tbody>
        </table>

    </div>


</div>

<div style="border:solid thick ;float:right;border-radius: 25px;height:auto;width:460px;overflow:scroll">
    <g:render template="showPosts"  model="[topic:topics,topicResources:topicResources,total:topicResources.size()]" />-
</div>


</body>
</html>