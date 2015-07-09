<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:450px ;height: 300px">
    <thead>
    <tr>
        <th colspan="2" scope="row">
            <div style=" padding: 5px 10px;">Subscriptions</div>
        </th>
    </tr>
    </thead>
    <tbody>
    <% userTop5.each { %>
    <tr>
        <th scope="row" style="text-align: left;">
            <div>
                <p>${it.topics.name}</p>
                <p>${it.topics.resources.summary}</p>
                <g:link controller="home" action="dashboard">UnSubscribe</g:link>
                <div style="float: left;">
                    <p>Subscription</p>
                    <p>${it.topics.subscriptions.size()}</p>
                </div>
                <div style="float: right">
                    <p>Posts</p>
                    <p>${it.topics.resources.size()}</p>
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
