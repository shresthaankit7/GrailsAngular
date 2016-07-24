<%--
  Created by IntelliJ IDEA.
  User: ankit07
  Date: 7/23/16
  Time: 7:41 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>New Person Page</title>
</head>

<body>
    <g:form controller="person" action="save">
        <label>Name:</label>
        <g:textField name="name"/><br/>
        <label>Address:</label>
        <g:textField name="address"/><br/>
        <label>Occupation:</label>
        <g:textField name="occupation"/><br/>
        <g:actionSubmit value="Save"/>
    </g:form>
    <hr>
    <g:link action="index" controller="person">List Person</g:link>
</body>
</html>