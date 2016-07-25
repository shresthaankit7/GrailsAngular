<%--
  Created by IntelliJ IDEA.
  User: ankit07
  Date: 7/24/16
  Time: 2:55 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Task List</title>
</head>

<body>
    <b>Listing tasks of ${personName}</b>

    <g:each in="${taskList}">
        <p>${it.taskName}</p>
        <p>${it.deadLine}</p>
        <hr>
    </g:each>
</body>
</html>