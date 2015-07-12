<%@ page import="link.User; link.Topic; link.Resource;link.Subscription;" %>
<%List<Resource> ls= topicResources;
%>
<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:450px;">
    <thead>
    <tr>
        <th colspan="2" scope="row">
            <div style=" padding: 5px 10px;">Posts:"${topic.name}"</div>
        </th>
    </tr>
    </thead>
    <tbody>
    <%ls.each {
    %>
    <tr>
        <th scope="row" style="text-align: left;">
            <div>
                <div style="float: left;">
                &nbsp;&nbsp; <g:link controller="user" action="userPublicProfile" params="[userId:it.createdBy.id]">

                   </g:link>
                </div>
                <div style="margin-left: 120px; font-size: inherit;">
                    <=>${it.createdBy.firstName} ${it.createdBy.lastName} &nbsp; ${it.lastUpdated}  <span style="float: right"> <g:link controller="topic" action="topicShow" params='[tid:"${it.topic.id}"]'>${it.topic.name}</g:link></span><br />
                &nbsp;<g:link controller="user" action="userPublicProfile" params="[userId:it.createdBy.id]"> <p>@${it.createdBy.userName}</p></g:link>
                    <p>${it.summary} </p>
                </div>
                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:9px;"><span style="color: rgb(0, 0, 255);"><u>Download</u></span></span> <span style="font-size:9px;"><span style="color: rgb(0, 0, 255);"><u>ViewFullSite</u></span></span> <span style="font-size:9px;"><span style="color: rgb(0, 0, 255);"><u>MarkAsRead</u></span></span> <span style="font-size:9px;"><span style="color: rgb(0, 0, 255);"><u><g:link controller="resource" action="showPost" params='[rid:"${it.id}"]'>ViewPost</g:link></u></span></span></p>
                </div>
            </div>
        </th>
    </tr>
    <% }%>


    </tbody>
    <g:paginate total="${total}" max="3" params="[q:params.q]"/>
</table>