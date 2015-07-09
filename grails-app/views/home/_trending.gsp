<%@ page import="link.User; link.Topic; link.Resource;link.Subscription;" %>
<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:450px ;height: 300px">
    <thead>
    <tr>
        <th colspan="2" scope="row">
            <div style=" padding: 5px 10px;">TRENDING_TOPICS</div>
        </th>
    </tr>
    </thead>
    <tbody>
    <% trendingTopics.each {Topic topic-> %>
    <tr>
        <th scope="row" style="text-align: left;">
            <div>
                <div style="float:inherit;">

                    <p><g:link controller="topic" action="topicShow" params='[tid:"${trendingTopics.id}"]'>${trendingTopics.name}</g:link></p>
                </div>
                <p>${topic.name}</p>
                <g:link controller="home" action="dashboard">UnSubscribe</g:link>
                <div style="float: left;">
                    <p>Subscription</p>
                    <p>${topic.subscriptions.size()}</p>
                </div>
                <div style="float: right">
                    <p>Posts</p>
                    <p>${topic.resources.size()}</p>
                </div>
                <div style="float:inherit">
                    <select name="seriousness"><option value="SERIOUS">Serious</option><option value="VERYSERIOUS">VerySerious</option><option value="CASUAL">Casual</option> </select>
                    <select name="visibility"><option value="PRIVATE">PRIVATE</option><option value="PUBLIC">PUBLIC</option>&nbsp;&nbsp; </select>&nbsp;
                </div>

                <button name="Edit" value="Edit"></button>
                <button name="Delete" value="Delete"></button>
                <button name="Mail" value="Mail"></button>

        </th>
    </tr>
    <% }%>
    </tbody>
</table>
