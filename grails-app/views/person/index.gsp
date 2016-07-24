<%--
  Created by IntelliJ IDEA.
  User: ankit07
  Date: 7/11/16
  Time: 11:07 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Person</title>
</head>

<body>
<div>
    <g:each in="${list}">
        <g:link action="listTask" controller="Task" params="${[name:it.name]}"><p>Name: ${it.name}</p></g:link>
        <p>Address: ${it.address}</p>
        <p>Occupation: ${it.occupation}</p>
        <g:link action="saveTask" controller="Task" params="${[id:it.id,name:it.name]}">Add Task</g:link>
        <hr>
    </g:each>
</div>
</body>
</html>