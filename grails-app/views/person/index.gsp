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
    <link rel="stylesheet" href="${resource(dir:'stylesheets',file:"application.css")}" type="text/css">
</head>

<body>
<div>
    <div>
            <g:link action="newPerson" controller="Person">Add Person</g:link>
    </div>
    <hr>

    <div>
    <table style="width:100%">

            <th>Name</th>
            <th>Address</th>
            <th>Occupation</th>
            <th>Add Task</th>


              <g:each in="${list}">
                  <tr>
                        <td><g:link action="listTask" controller="Task" params="${[name:it.name]}">${it.name}</g:link></td>
                        <td name="convertCamelCase">${it.address}</td>
                        <td>${it.occupation}</><td>
                        <td><g:link action="saveTask" controller="Task" params="${[id:it.id,name:it.name]}">Add Task</g:link></td>
                  </tr>
              </g:each>

    </table>
    </div>
</div>
<asset:javascript src="Utils/GeneralUtils.js"/>
</body>
</html>