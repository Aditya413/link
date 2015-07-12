<%@ page import="link.User; link.Topic; link.Resource;link.Subscription;" %>
<%List<Resource> ls=inboxlist;
%>
<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:450px;">
    <thead>
    <tr>
        <th colspan="2" scope="row">
            <div style=" padding: 5px 10px;">Inbox <span style="padding-left: 250px"></span></div>
        </th>
    </tr>
    </thead>
    <tbody>
    <%ls.each {
    %>
    <tr>
        <th scope="row" style="text-align: left;">
            <div style="margin-left: 120px; font-size: inherit;">
            <p>${it.createdBy.firstName} ${it.createdBy.lastName} &nbsp; ${it.lastUpdated}  <span style="float: right"> <g:link controller="topic" action="topicShow" params='[tid:"${it.topicsId}"]'>${it.topics.name}</g:link></span><br />
            &nbsp;<g:link controller="user" action="userPublicProfile" params="[userId:it.createdById]">@${it.createdBy.userName}</p></g:link>
                ${it.summary}
            </div>
        </th>
   </tr>

    <% }%>
    </tbody>
</table>
