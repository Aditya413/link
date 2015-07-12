

<div class="row" style="margin:2px ; border: outset;">
    <div class="col-md-9">

        <div class="row">

            <div class="col-md-6"><g:link controller="user" action="userPublicProfile" params="[userId:post.createdBy.id]"> @${post.createdBy.userName} </g:link></div>

            <div class="col-md-6"><g:link controller="topic" action="topicShow" params="[tid:post.topics.id]"> ${post.topics}</g:link></div>

        </div>
        <div class="row">
            <div class="col-md-12">${post.summary}</div>
        </div>
        <div class="row">
            <div class="col-md-6"><g:link controller="resource" action="showPost" params='[rid:"${post.id}"]'>ViewPost</g:link></div>
        </div>

    </div>
</div>










