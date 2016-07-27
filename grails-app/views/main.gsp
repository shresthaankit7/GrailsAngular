<%--
  Created by IntelliJ IDEA.
  User: ankshrestha
  Date: 7/27/16
  Time: 5:50 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Main Page</title>
    <asset:javascript src="application.js"/>
    <asset:javascript src="person/module.js"/>
</head>

<body ng-app="">
    <div>Main Page</div>

    <div>Header</div>
        <p>Name: <input type="text" ng-model="name"></p>
        <p ng-bind="name"></p>

    <div>Footer</div>

</body>
</html>