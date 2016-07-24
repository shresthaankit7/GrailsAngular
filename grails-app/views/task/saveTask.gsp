<%--
  Created by IntelliJ IDEA.
  User: ankit07
  Date: 7/24/16
  Time: 3:11 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Assign Task for ${name}</title>
</head>

<body>
    <g:form action="save" controller="Task" params="${[personName:name]}">
        <label>Task Name</label>
        <g:textField name="taskName"/><br/>
        <label>Dead line Days</label>
        <g:textField name="deadLine"/>
        <g:actionSubmit value="Save"/>
    </g:form>
</body>
</html>