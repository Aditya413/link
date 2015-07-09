<table align="right" border="1" cellpadding="1" cellspacing="1" style="width:450px ;height: 300px">
    <thead>
    <tr>
        <th colspan="2" scope="row">
            <div style=" padding: 5px 10px;">Inbox</div>
        </th>
    </tr>
    </thead>
    <tbody>
        <h1>Inbox</h1>
<table class="table table-condensed">
    <tr>
        <th>Summary</th>
        <th>Title</th>
    </tr>
<g:each in="${inboxL}" var="inb">
    <tr>
        <td>${inb}</td>
        <td align="right">${inb.title}</td>
    </tr>
    </g:each>
    </table>
</tbody>
</table>
