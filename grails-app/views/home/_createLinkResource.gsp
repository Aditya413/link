<%@ page import="link.User; link.Topic; link.Resource;link.Subscription;" %>
<%List<Topic> topicList= usertopics%>
<div>
    <g:form url="[controller:'linkResource',action:'createUserLinkResource']" method="get">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Share Link

        <hr />
        <div >
            <p>Link * : <input name="url" type="text" value="" /></p>
            <p>Summary * :<textarea name="summary"></textarea></p>
            <p>&nbsp;</p>
            <p>Topic * : <select name="topicId">
                <%topicList.each {%>
                <option value="${it.id}">${it.name}</option>
                <%}%>
            </select></p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="b1" type="submit" value="Share" /></p>
        </div>
    </g:form>
</div>